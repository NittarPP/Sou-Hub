local StrToNumber = tonumber;
local Byte = string.byte;
local Char = string.char;
local Sub = string.sub;
local Subg = string.gsub;
local Rep = string.rep;
local Concat = table.concat;
local Insert = table.insert;
local LDExp = math.ldexp;
local GetFEnv = getfenv or function()
	return _ENV;
end;
local Setmetatable = setmetatable;
local PCall = pcall;
local Select = select;
local Unpack = unpack or table.unpack;
local ToNumber = tonumber;
local function VMCall(ByteString, vmenv, ...)
	local DIP = 1;
	local repeatNext;
	ByteString = Subg(Sub(ByteString, 5), "..", function(byte)
		if (Byte(byte, 2) == 79) then
			repeatNext = StrToNumber(Sub(byte, 1, 1));
			return "";
		else
			local a = Char(StrToNumber(byte, 16));
			if repeatNext then
				local b = Rep(a, repeatNext);
				repeatNext = nil;
				return b;
			else
				return a;
			end
		end
	end);
	local function gBit(Bit, Start, End)
		if End then
			local Res = (Bit / (2 ^ (Start - 1))) % (2 ^ (((End - 1) - (Start - 1)) + 1));
			return Res - (Res % 1);
		else
			local Plc = 2 ^ (Start - 1);
			return (((Bit % (Plc + Plc)) >= Plc) and 1) or 0;
		end
	end
	local function gBits8()
		local a = Byte(ByteString, DIP, DIP);
		DIP = DIP + 1;
		return a;
	end
	local function gBits16()
		local a, b = Byte(ByteString, DIP, DIP + 2);
		DIP = DIP + 2;
		return (b * 256) + a;
	end
	local function gBits32()
		local a, b, c, d = Byte(ByteString, DIP, DIP + 3);
		DIP = DIP + 4;
		return (d * 16777216) + (c * 65536) + (b * 256) + a;
	end
	local function gFloat()
		local Left = gBits32();
		local Right = gBits32();
		local IsNormal = 1;
		local Mantissa = (gBit(Right, 1, 20) * (2 ^ 32)) + Left;
		local Exponent = gBit(Right, 21, 31);
		local Sign = ((gBit(Right, 32) == 1) and -1) or 1;
		if (Exponent == 0) then
			if (Mantissa == 0) then
				return Sign * 0;
			else
				Exponent = 1;
				IsNormal = 0;
			end
		elseif (Exponent == 2047) then
			return ((Mantissa == 0) and (Sign * (1 / 0))) or (Sign * NaN);
		end
		return LDExp(Sign, Exponent - 1023) * (IsNormal + (Mantissa / (2 ^ 52)));
	end
	local function gString(Len)
		local Str;
		if not Len then
			Len = gBits32();
			if (Len == 0) then
				return "";
			end
		end
		Str = Sub(ByteString, DIP, (DIP + Len) - 1);
		DIP = DIP + Len;
		local FStr = {};
		for Idx = 1, #Str do
			FStr[Idx] = Char(Byte(Sub(Str, Idx, Idx)));
		end
		return Concat(FStr);
	end
	local gInt = gBits32;
	local function _R(...)
		return {...}, Select("#", ...);
	end
	local function Deserialize()
		local Instrs = {};
		local Functions = {};
		local Lines = {};
		local Chunk = {Instrs,Functions,nil,Lines};
		local ConstCount = gBits32();
		local Consts = {};
		for Idx = 1, ConstCount do
			local Type = gBits8();
			local Cons;
			if (Type == 1) then
				Cons = gBits8() ~= 0;
			elseif (Type == 2) then
				Cons = gFloat();
			elseif (Type == 3) then
				Cons = gString();
			end
			Consts[Idx] = Cons;
		end
		Chunk[3] = gBits8();
		for Idx = 1, gBits32() do
			local Descriptor = gBits8();
			if (gBit(Descriptor, 1, 1) == 0) then
				local Type = gBit(Descriptor, 2, 3);
				local Mask = gBit(Descriptor, 4, 6);
				local Inst = {gBits16(),gBits16(),nil,nil};
				if (Type == 0) then
					Inst[3] = gBits16();
					Inst[4] = gBits16();
				elseif (Type == 1) then
					Inst[3] = gBits32();
				elseif (Type == 2) then
					Inst[3] = gBits32() - (2 ^ 16);
				elseif (Type == 3) then
					Inst[3] = gBits32() - (2 ^ 16);
					Inst[4] = gBits16();
				end
				if (gBit(Mask, 1, 1) == 1) then
					Inst[2] = Consts[Inst[2]];
				end
				if (gBit(Mask, 2, 2) == 1) then
					Inst[3] = Consts[Inst[3]];
				end
				if (gBit(Mask, 3, 3) == 1) then
					Inst[4] = Consts[Inst[4]];
				end
				Instrs[Idx] = Inst;
			end
		end
		for Idx = 1, gBits32() do
			Functions[Idx - 1] = Deserialize();
		end
		return Chunk;
	end
	local function Wrap(Chunk, Upvalues, Env)
		local Instr = Chunk[1];
		local Proto = Chunk[2];
		local Params = Chunk[3];
		return function(...)
			local Instr = Instr;
			local Proto = Proto;
			local Params = Params;
			local _R = _R;
			local VIP = 1;
			local Top = -1;
			local Vararg = {};
			local Args = {...};
			local PCount = Select("#", ...) - 1;
			local Lupvals = {};
			local Stk = {};
			for Idx = 0, PCount do
				if (Idx >= Params) then
					Vararg[Idx - Params] = Args[Idx + 1];
				else
					Stk[Idx] = Args[Idx + 1];
				end
			end
			local Varargsz = (PCount - Params) + 1;
			local Inst;
			local Enum;
			while true do
				Inst = Instr[VIP];
				Enum = Inst[1];
				if (Enum <= 28) then
					if (Enum <= 13) then
						if (Enum <= 6) then
							if (Enum <= 2) then
								if (Enum <= 0) then
									local A = Inst[2];
									local B = Stk[Inst[3]];
									Stk[A + 1] = B;
									Stk[A] = B[Inst[4]];
								elseif (Enum > 1) then
									if Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3];
									end
								elseif (Stk[Inst[2]] == Inst[4]) then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							elseif (Enum <= 4) then
								if (Enum == 3) then
									local A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Inst[3]));
								else
									Stk[Inst[2]] = {};
								end
							elseif (Enum == 5) then
								local A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 9) then
							if (Enum <= 7) then
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Top));
							elseif (Enum > 8) then
								do
									return;
								end
							else
								local NewProto = Proto[Inst[3]];
								local NewUvals;
								local Indexes = {};
								NewUvals = Setmetatable({}, {__index=function(_, Key)
									local Val = Indexes[Key];
									return Val[1][Val[2]];
								end,__newindex=function(_, Key, Value)
									local Val = Indexes[Key];
									Val[1][Val[2]] = Value;
								end});
								for Idx = 1, Inst[4] do
									VIP = VIP + 1;
									local Mvm = Instr[VIP];
									if (Mvm[1] == 44) then
										Indexes[Idx - 1] = {Stk,Mvm[3]};
									else
										Indexes[Idx - 1] = {Upvalues,Mvm[3]};
									end
									Lupvals[#Lupvals + 1] = Indexes;
								end
								Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
							end
						elseif (Enum <= 11) then
							if (Enum == 10) then
								local A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							else
								Stk[Inst[2]] = Stk[Inst[3]];
							end
						elseif (Enum > 12) then
							local B = Inst[3];
							local K = Stk[B];
							for Idx = B + 1, Inst[4] do
								K = K .. Stk[Idx];
							end
							Stk[Inst[2]] = K;
						else
							Stk[Inst[2]] = Inst[3];
						end
					elseif (Enum <= 20) then
						if (Enum <= 16) then
							if (Enum <= 14) then
								local A = Inst[2];
								local T = Stk[A];
								local B = Inst[3];
								for Idx = 1, B do
									T[Idx] = Stk[A + Idx];
								end
							elseif (Enum > 15) then
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							elseif not Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 18) then
							if (Enum == 17) then
								local A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							else
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							end
						elseif (Enum == 19) then
							Stk[Inst[2]] = Env[Inst[3]];
						elseif not Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum <= 24) then
						if (Enum <= 22) then
							if (Enum == 21) then
								Stk[Inst[2]] = Inst[3];
							else
								Stk[Inst[2]] = Wrap(Proto[Inst[3]], nil, Env);
							end
						elseif (Enum == 23) then
							Stk[Inst[2]]();
						else
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						end
					elseif (Enum <= 26) then
						if (Enum > 25) then
							Stk[Inst[2]] = Wrap(Proto[Inst[3]], nil, Env);
						elseif Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					elseif (Enum == 27) then
						Stk[Inst[2]] = Env[Inst[3]];
					else
						Stk[Inst[2]] = Upvalues[Inst[3]];
					end
				elseif (Enum <= 43) then
					if (Enum <= 35) then
						if (Enum <= 31) then
							if (Enum <= 29) then
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Stk[A + 1]));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							elseif (Enum > 30) then
								local A = Inst[2];
								local B = Stk[Inst[3]];
								Stk[A + 1] = B;
								Stk[A] = B[Inst[4]];
							else
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Top));
							end
						elseif (Enum <= 33) then
							if (Enum == 32) then
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
							else
								Env[Inst[3]] = Stk[Inst[2]];
							end
						elseif (Enum > 34) then
							local B = Inst[3];
							local K = Stk[B];
							for Idx = B + 1, Inst[4] do
								K = K .. Stk[Idx];
							end
							Stk[Inst[2]] = K;
						else
							Stk[Inst[2]]();
						end
					elseif (Enum <= 39) then
						if (Enum <= 37) then
							if (Enum > 36) then
								local A = Inst[2];
								local T = Stk[A];
								local B = Inst[3];
								for Idx = 1, B do
									T[Idx] = Stk[A + Idx];
								end
							else
								Stk[Inst[2]] = {};
							end
						elseif (Enum > 38) then
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						else
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						end
					elseif (Enum <= 41) then
						if (Enum == 40) then
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						else
							Stk[Inst[2]][Inst[3]] = Inst[4];
						end
					elseif (Enum > 42) then
						local A = Inst[2];
						local T = Stk[A];
						for Idx = A + 1, Inst[3] do
							Insert(T, Stk[Idx]);
						end
					else
						local A = Inst[2];
						Stk[A] = Stk[A]();
					end
				elseif (Enum <= 50) then
					if (Enum <= 46) then
						if (Enum <= 44) then
							Stk[Inst[2]] = Stk[Inst[3]];
						elseif (Enum > 45) then
							if (Stk[Inst[2]] == Inst[4]) then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						else
							local A = Inst[2];
							Stk[A] = Stk[A]();
						end
					elseif (Enum <= 48) then
						if (Enum == 47) then
							Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
						else
							Env[Inst[3]] = Stk[Inst[2]];
						end
					elseif (Enum > 49) then
						VIP = Inst[3];
					else
						local A = Inst[2];
						Stk[A] = Stk[A](Stk[A + 1]);
					end
				elseif (Enum <= 54) then
					if (Enum <= 52) then
						if (Enum == 51) then
							local A = Inst[2];
							Stk[A](Stk[A + 1]);
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
						end
					elseif (Enum > 53) then
						Stk[Inst[2]][Inst[3]] = Inst[4];
					else
						local A = Inst[2];
						local Results, Limit = _R(Stk[A](Stk[A + 1]));
						Top = (Limit + A) - 1;
						local Edx = 0;
						for Idx = A, Top do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					end
				elseif (Enum <= 56) then
					if (Enum > 55) then
						Stk[Inst[2]] = Upvalues[Inst[3]];
					else
						local A = Inst[2];
						Stk[A] = Stk[A](Stk[A + 1]);
					end
				elseif (Enum > 57) then
					do
						return;
					end
				else
					local NewProto = Proto[Inst[3]];
					local NewUvals;
					local Indexes = {};
					NewUvals = Setmetatable({}, {__index=function(_, Key)
						local Val = Indexes[Key];
						return Val[1][Val[2]];
					end,__newindex=function(_, Key, Value)
						local Val = Indexes[Key];
						Val[1][Val[2]] = Value;
					end});
					for Idx = 1, Inst[4] do
						VIP = VIP + 1;
						local Mvm = Instr[VIP];
						if (Mvm[1] == 44) then
							Indexes[Idx - 1] = {Stk,Mvm[3]};
						else
							Indexes[Idx - 1] = {Upvalues,Mvm[3]};
						end
						Lupvals[#Lupvals + 1] = Indexes;
					end
					Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
return VMCall("LOL!153O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574033D3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F73686C6578776172652F4F72696F6E2F6D61696E2F736F75726365030C3O004E6F74696669636174696F6E030A3O004D616B6557696E646F7703043O004E616D6503093O00536F75202F20487562030B3O00486964655072656D69756D0100030A3O0053617665436F6E6669672O01030C3O00436F6E666967466F6C64657203073O00536F752D48756203073O00506C6179657273030B3O004C6F63616C506C6179657203073O00506C616365496403043O004C6F6164030B3O0031352O383538373438363103013O003103053O00537461727400273O0012133O00013O001213000100023O00202O000100010003001215000300044O0027000100034O00055O00022O002A3O0001000200063900013O000100012O002C7O001221000100053O00202O00013O00062O002400033O000400302900030007000800302900030009000A0030290003000B000C0030290003000D000E2O0011000100030002001213000200023O00201000020002000F002010000200020010001213000300023O00201000030003001100063900040001000100032O002C3O00024O002C3O00014O002C7O001221000400124O0024000400023O001215000500133O001215000600144O002500040002000100063900050002000100032O002C3O00044O002C3O00034O002C3O00023O001221000500153O001213000500154O00170005000100012O003A3O00013O00033O00053O0003103O004D616B654E6F74696669636174696F6E03043O004E616D6503073O00436F6E74656E7403053O00496D61676503043O0054696D6504094O001C00045O00202O0004000400012O002400063O000400102F000600023O00102F00060003000100102F00060004000200102F0006000500032O00200004000600012O003A3O00017O00263O00030C3O004E6F74696669636174696F6E03103O00536F75204E6F74696669636174696F6E03063O0048652O6C6F2003043O004E616D6503143O002C2057656C636F6D6520746F20536F752048756203173O00726278612O73657469643A2O2F2O34382O3334352O3938026O00144003063O00757064617465030B3O0031352O383538373438363103073O004D616B6554616203043O004D61696E03043O0049636F6E030B3O005072656D69756D4F6E6C790100030A3O00412O6453656374696F6E030B3O004D61696E20536372697074030A3O00412O6454657874626F7803083O00412O642053697A6503073O0044656661756C7403013O0030030D3O0054657874446973612O706561722O0103083O0043612O6C6261636B03093O00412O6442752O746F6E03053O00526573657403273O0055736520284D616B652043617368202D202C207761697420666F72206E6577207570646174652903043O00302D343603053O00436C6F736503013O003103043O006B69636B030D3O00452O726F7220536F752048756203103O004D616B654E6F74696669636174696F6E030B3O00536F752053752O706F727403073O00436F6E74656E74031C3O002C20452O726F72204C6F6164696E672C204175746F2052656C6F616403053O00496D61676503043O0054696D6503053O00537461727401523O001213000100013O001215000200023O001215000300034O001C00045O002010000400040004001215000500054O0023000300030005001215000400063O001215000500074O002000010005000100063900013O000100012O00383O00013O001221000100083O0026013O003B000100090004063O003B00012O001C000100013O00202O00010001000A2O002400033O000300302900030004000B0030290003000C00060030290003000D000E2O001100010003000200202O00020001000F2O002400043O00010030290004000400102O002000020004000100202O0002000100112O002400043O000400302900040004001200302900040013001400302900040015001600021A000500013O00102F0004001700052O002000020004000100202O0002000100182O002400043O000200302900040004001900063900050002000100012O00387O00102F0004001700052O002000020004000100202O0002000100112O002400043O000400302900040004001A00302900040013001B00302900040015001600021A000500033O00102F0004001700052O002000020004000100202O0002000100182O002400043O000200302900040004001C00063900050004000100012O00383O00023O00102F0004001700052O0020000200040001001213000200084O00170002000100010004063O005100010026013O00420001001D0004063O004200012O001C00015O00202O00010001001E0012150003001F4O00200001000300010004063O005100012O001C000100023O00202O0001000100202O002400033O0004003029000300040021001215000400034O001C00055O002010000500050004001215000600234O002300040004000600102F0003002200040030290003002400060030290003002500072O0020000100030001001213000100264O00170001000100012O003A3O00013O00053O00113O0003073O004D616B6554616203043O004E616D6503063O0055706461746503043O0049636F6E03173O00726278612O73657469643A2O2F2O34382O3334352O3938030B3O005072656D69756D4F6E6C790100030A3O00412O6454657874626F7803073O00446973636F726403073O0044656661756C74031D3O00682O7470733A2O2F646973636F72642E2O672F616A556B585259516276030D3O0054657874446973612O7065617203083O0043612O6C6261636B030A3O00412O6453656374696F6E030E3O005570646174652076657220302E32031E3O005570646174652045617420536C696D657320746F2047726F77204855474503073O0046697820427567001C4O001C7O00206O00012O002400023O00030030290002000200030030290002000400050030290002000600072O00113O0002000200202O00013O00082O002400033O00040030290003000200090030290003000A000B0030290003000C000700021A00045O00102F0003000D00042O002000010003000100202O00013O000E2O002400033O000100302900030002000F2O002000010003000100202O00013O000E2O002400033O00010030290003000200102O002000010003000100202O00013O000E2O002400033O00010030290003000200112O00200001000300012O003A3O00013O00013O00023O0003073O0044656661756C74031D3O00682O7470733A2O2F646973636F72642E2O672F616A556B58525951627601033O001215000100023O001221000100014O003A3O00017O000B3O00026O00F03F03043O0067616D65030A3O004765745365727669636503113O005265706C69636174656453746F72616765030C3O0057616974466F724368696C6403083O00486F6E6579706F7403083O00496E7465726E616C030D3O0052656D6F746553746F72616765031B3O0041776172645370696E53697A65202D2052656D6F74654576656E74030A3O004669726553657276657203063O00756E7061636B01184O002400013O000100102F000100013O001213000200023O00202O000200020003001215000400044O001100020004000200202O000200020005001215000400064O001100020004000200202O000200020005001215000400074O001100020004000200202O000200020005001215000400084O001100020004000200202O000200020005001215000400094O001100020004000200202O00020002000A0012130004000B4O000B000500014O001D000400054O000700023O00012O003A3O00017O00073O0003093O00436861726163746572030E3O00436861726163746572412O64656403043O0057616974030E3O0046696E6446697273744368696C6403083O0048756D616E6F696403063O004865616C7468029O000F4O001C7O0020105O000100060F3O0008000100010004063O000800012O001C7O0020105O000200206O00032O00313O0002000200202O00013O0004001215000300054O00110001000300020006020001000E00013O0004063O000E00010030290001000600072O003A3O00017O000B3O00026O00F03F03043O0067616D65030A3O004765745365727669636503113O005265706C69636174656453746F72616765030C3O0057616974466F724368696C6403083O00486F6E6579706F7403083O00496E7465726E616C030D3O0052656D6F746553746F7261676503153O00427579536B696E202D2052656D6F74654576656E74030A3O004669726553657276657203063O00756E7061636B01184O002400013O000100102F000100013O001213000200023O00202O000200020003001215000400044O001100020004000200202O000200020005001215000400064O001100020004000200202O000200020005001215000400074O001100020004000200202O000200020005001215000400084O001100020004000200202O000200020005001215000400094O001100020004000200202O00020002000A0012130004000B4O000B000500014O001D000400054O000700023O00012O003A3O00017O00013O0003073O0044657374726F7900044O001C7O00206O00012O00333O000200012O003A3O00017O000B3O0003053O007461626C6503043O0066696E6403083O00746F737472696E6703043O004C6F6164030C3O004E6F74696669636174696F6E030B3O00536F752053752O706F727403063O0048652O6C6F2003043O004E616D6503143O002C2047616D65204E6F742053752O706F7274656403173O00726278612O73657469643A2O2F2O34382O3334352O3938026O00144000183O0012133O00013O0020105O00022O001C00015O001213000200034O001C000300014O001D000200034O00055O00020006023O000D00013O0004063O000D00010012133O00044O001C000100014O00333O000200010004063O001700010012133O00053O001215000100063O001215000200074O001C000300023O002010000300030008001215000400094O00230002000200040012150003000A3O0012150004000B4O00203O000400012O003A3O00017O00", GetFEnv(), ...);

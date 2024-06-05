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
									Env[Inst[3]] = Stk[Inst[2]];
								elseif (Enum > 1) then
									Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
								else
									Stk[Inst[2]] = Env[Inst[3]];
								end
							elseif (Enum <= 4) then
								if (Enum == 3) then
									local A = Inst[2];
									local T = Stk[A];
									local B = Inst[3];
									for Idx = 1, B do
										T[Idx] = Stk[A + Idx];
									end
								else
									local A = Inst[2];
									Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
								end
							elseif (Enum == 5) then
								Stk[Inst[2]]();
							else
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Inst[3]));
							end
						elseif (Enum <= 9) then
							if (Enum <= 7) then
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							elseif (Enum == 8) then
								Stk[Inst[2]] = {};
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 11) then
							if (Enum > 10) then
								local A = Inst[2];
								local T = Stk[A];
								local B = Inst[3];
								for Idx = 1, B do
									T[Idx] = Stk[A + Idx];
								end
							else
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Top));
							end
						elseif (Enum == 12) then
							local A = Inst[2];
							Stk[A] = Stk[A]();
						else
							Stk[Inst[2]][Inst[3]] = Inst[4];
						end
					elseif (Enum <= 20) then
						if (Enum <= 16) then
							if (Enum <= 14) then
								if Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							elseif (Enum == 15) then
								do
									return;
								end
							else
								Stk[Inst[2]] = Wrap(Proto[Inst[3]], nil, Env);
							end
						elseif (Enum <= 18) then
							if (Enum > 17) then
								local B = Inst[3];
								local K = Stk[B];
								for Idx = B + 1, Inst[4] do
									K = K .. Stk[Idx];
								end
								Stk[Inst[2]] = K;
							else
								do
									return;
								end
							end
						elseif (Enum == 19) then
							if not Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						else
							Stk[Inst[2]] = Stk[Inst[3]];
						end
					elseif (Enum <= 24) then
						if (Enum <= 22) then
							if (Enum > 21) then
								Stk[Inst[2]] = Wrap(Proto[Inst[3]], nil, Env);
							else
								Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
							end
						elseif (Enum == 23) then
							local A = Inst[2];
							local B = Stk[Inst[3]];
							Stk[A + 1] = B;
							Stk[A] = B[Inst[4]];
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
					elseif (Enum <= 26) then
						if (Enum == 25) then
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
								if (Mvm[1] == 52) then
									Indexes[Idx - 1] = {Stk,Mvm[3]};
								else
									Indexes[Idx - 1] = {Upvalues,Mvm[3]};
								end
								Lupvals[#Lupvals + 1] = Indexes;
							end
							Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
						else
							local A = Inst[2];
							local T = Stk[A];
							for Idx = A + 1, Inst[3] do
								Insert(T, Stk[Idx]);
							end
						end
					elseif (Enum == 27) then
						if not Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					else
						local A = Inst[2];
						local B = Stk[Inst[3]];
						Stk[A + 1] = B;
						Stk[A] = B[Inst[4]];
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
							elseif (Enum == 30) then
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 33) then
							if (Enum == 32) then
								Stk[Inst[2]]();
							else
								Stk[Inst[2]] = Inst[3];
							end
						elseif (Enum == 34) then
							Stk[Inst[2]] = Env[Inst[3]];
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
						end
					elseif (Enum <= 39) then
						if (Enum <= 37) then
							if (Enum > 36) then
								local A = Inst[2];
								Stk[A](Stk[A + 1]);
							elseif (Stk[Inst[2]] == Inst[4]) then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						elseif (Enum == 38) then
							Stk[Inst[2]][Inst[3]] = Inst[4];
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Stk[A + 1]);
						end
					elseif (Enum <= 41) then
						if (Enum > 40) then
							if Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						else
							Stk[Inst[2]] = {};
						end
					elseif (Enum > 42) then
						local A = Inst[2];
						Stk[A](Stk[A + 1]);
					else
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Top));
					end
				elseif (Enum <= 50) then
					if (Enum <= 46) then
						if (Enum <= 44) then
							if (Stk[Inst[2]] == Inst[4]) then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						elseif (Enum == 45) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
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
								if (Mvm[1] == 52) then
									Indexes[Idx - 1] = {Stk,Mvm[3]};
								else
									Indexes[Idx - 1] = {Upvalues,Mvm[3]};
								end
								Lupvals[#Lupvals + 1] = Indexes;
							end
							Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
						end
					elseif (Enum <= 48) then
						if (Enum == 47) then
							local A = Inst[2];
							Stk[A] = Stk[A](Stk[A + 1]);
						else
							Env[Inst[3]] = Stk[Inst[2]];
						end
					elseif (Enum > 49) then
						local B = Inst[3];
						local K = Stk[B];
						for Idx = B + 1, Inst[4] do
							K = K .. Stk[Idx];
						end
						Stk[Inst[2]] = K;
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
				elseif (Enum <= 54) then
					if (Enum <= 52) then
						if (Enum > 51) then
							Stk[Inst[2]] = Stk[Inst[3]];
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
						end
					elseif (Enum == 53) then
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Inst[3]));
					else
						Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];
					end
				elseif (Enum <= 56) then
					if (Enum > 55) then
						Stk[Inst[2]] = Upvalues[Inst[3]];
					else
						Stk[Inst[2]] = Upvalues[Inst[3]];
					end
				elseif (Enum == 57) then
					Stk[Inst[2]] = Inst[3];
				else
					local A = Inst[2];
					Stk[A] = Stk[A]();
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
return VMCall("LOL!153O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574033D3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F73686C6578776172652F4F72696F6E2F6D61696E2F736F75726365030C3O004E6F74696669636174696F6E030A3O004D616B6557696E646F7703043O004E616D6503093O00536F75202F20487562030B3O00486964655072656D69756D0100030A3O0053617665436F6E6669672O01030C3O00436F6E666967466F6C64657203073O00536F752D48756203073O00506C6179657273030B3O004C6F63616C506C6179657203073O00506C616365496403043O004C6F6164030B3O0031352O383538373438363103013O003103053O00537461727400273O0012223O00013O001222000100023O00201C000100010003001239000300044O0007000100034O00235O00022O003A3O0001000200062E00013O000100012O00347O00122O000100053O00201C00013O00062O000800033O000400302600030007000800302600030009000A0030260003000B000C0030260003000D000E2O0033000100030002001222000200023O00201E00020002000F00201E000200020010001222000300023O00201E00030003001100062E00040001000100032O00343O00024O00343O00014O00347O00122O000400124O0008000400023O001239000500133O001239000600144O000300040002000100062E00050002000100032O00343O00044O00343O00034O00343O00023O00122O000500153O001222000500154O00200005000100012O000F3O00013O00033O00053O0003103O004D616B654E6F74696669636174696F6E03043O004E616D6503073O00436F6E74656E7403053O00496D61676503043O0054696D6504094O003800045O00201C0004000400012O000800063O0004001015000600023O0010150006000300010010150006000400020010150006000500032O00060004000600012O000F3O00017O00263O00030C3O004E6F74696669636174696F6E03103O00536F75204E6F74696669636174696F6E03063O0048652O6C6F2003043O004E616D6503143O002C2057656C636F6D6520746F20536F752048756203173O00726278612O73657469643A2O2F2O34382O3334352O3938026O00144003063O00757064617465030B3O0031352O383538373438363103073O004D616B6554616203043O004D61696E03043O0049636F6E030B3O005072656D69756D4F6E6C790100030A3O00412O6453656374696F6E030B3O004D61696E20536372697074030A3O00412O6454657874626F7803083O00412O642053697A6503073O0044656661756C7403013O0030030D3O0054657874446973612O706561722O0103083O0043612O6C6261636B03093O00412O6442752O746F6E03053O00526573657403273O0055736520284D616B652043617368202D202C207761697420666F72206E6577207570646174652903043O00302D343603053O00436C6F736503013O003103043O006B69636B030D3O00452O726F7220536F752048756203103O004D616B654E6F74696669636174696F6E030B3O00536F752053752O706F727403073O00436F6E74656E74031C3O002C20452O726F72204C6F6164696E672C204175746F2052656C6F616403053O00496D61676503043O0054696D6503053O00537461727401523O001222000100013O001239000200023O001239000300034O003800045O00201E000400040004001239000500054O0032000300030005001239000400063O001239000500074O000600010005000100062E00013O000100012O00373O00013O00122O000100083O00262C3O003B0001000900041F3O003B00012O0038000100013O00201C00010001000A2O000800033O000300302600030004000B0030260003000C00060030260003000D000E2O003300010003000200201C00020001000F2O000800043O00010030260004000400102O000600020004000100201C0002000100112O000800043O0004003026000400040012003026000400130014003026000400150016000216000500013O0010150004001700052O000600020004000100201C0002000100182O000800043O000200302600040004001900062E00050002000100012O00377O0010150004001700052O000600020004000100201C0002000100112O000800043O000400302600040004001A00302600040013001B003026000400150016000216000500033O0010150004001700052O000600020004000100201C0002000100182O000800043O000200302600040004001C00062E00050004000100012O00373O00023O0010150004001700052O0006000200040001001222000200084O002000020001000100041F3O0051000100262C3O00420001001D00041F3O004200012O003800015O00201C00010001001E0012390003001F4O000600010003000100041F3O005100012O0038000100023O00201C0001000100202O000800033O0004003026000300040021001239000400034O003800055O00201E000500050004001239000600234O00320004000400060010150003002200040030260003002400060030260003002500072O0006000100030001001222000100264O00200001000100012O000F3O00013O00053O00113O0003073O004D616B6554616203043O004E616D6503063O0055706461746503043O0049636F6E03173O00726278612O73657469643A2O2F2O34382O3334352O3938030B3O005072656D69756D4F6E6C790100030A3O00412O6454657874626F7803073O00446973636F726403073O0044656661756C74031D3O00682O7470733A2O2F646973636F72642E2O672F616A556B585259516276030D3O0054657874446973612O7065617203083O0043612O6C6261636B030A3O00412O6453656374696F6E030E3O005570646174652076657220302E32031E3O005570646174652045617420536C696D657320746F2047726F77204855474503073O0046697820427567001C4O00387O00201C5O00012O000800023O00030030260002000200030030260002000400050030260002000600072O00333O0002000200201C00013O00082O000800033O00040030260003000200090030260003000A000B0030260003000C000700021600045O0010150003000D00042O000600010003000100201C00013O000E2O000800033O000100302600030002000F2O000600010003000100201C00013O000E2O000800033O00010030260003000200102O000600010003000100201C00013O000E2O000800033O00010030260003000200112O00060001000300012O000F3O00013O00013O00023O0003073O0044656661756C74031D3O00682O7470733A2O2F646973636F72642E2O672F616A556B58525951627601033O001239000100023O00122O000100014O000F3O00017O000B3O00026O00F03F03043O0067616D65030A3O004765745365727669636503113O005265706C69636174656453746F72616765030C3O0057616974466F724368696C6403083O00486F6E6579706F7403083O00496E7465726E616C030D3O0052656D6F746553746F72616765031B3O0041776172645370696E53697A65202D2052656D6F74654576656E74030A3O004669726553657276657203063O00756E7061636B01184O000800013O0001001015000100013O001222000200023O00201C000200020003001239000400044O003300020004000200201C000200020005001239000400064O003300020004000200201C000200020005001239000400074O003300020004000200201C000200020005001239000400084O003300020004000200201C000200020005001239000400094O003300020004000200201C00020002000A0012220004000B4O0014000500014O001D000400054O002A00023O00012O000F3O00017O00073O0003093O00436861726163746572030E3O00436861726163746572412O64656403043O0057616974030E3O0046696E6446697273744368696C6403083O0048756D616E6F696403063O004865616C7468029O000F4O00387O00201E5O000100061B3O00080001000100041F3O000800012O00387O00201E5O000200201C5O00032O002F3O0002000200201C00013O0004001239000300054O003300010003000200060E0001000E00013O00041F3O000E00010030260001000600072O000F3O00017O000B3O00026O00F03F03043O0067616D65030A3O004765745365727669636503113O005265706C69636174656453746F72616765030C3O0057616974466F724368696C6403083O00486F6E6579706F7403083O00496E7465726E616C030D3O0052656D6F746553746F7261676503153O00427579536B696E202D2052656D6F74654576656E74030A3O004669726553657276657203063O00756E7061636B01184O000800013O0001001015000100013O001222000200023O00201C000200020003001239000400044O003300020004000200201C000200020005001239000400064O003300020004000200201C000200020005001239000400074O003300020004000200201C000200020005001239000400084O003300020004000200201C000200020005001239000400094O003300020004000200201C00020002000A0012220004000B4O0014000500014O001D000400054O002A00023O00012O000F3O00017O00013O0003073O0044657374726F7900044O00387O00201C5O00012O002B3O000200012O000F3O00017O000B3O0003053O007461626C6503043O0066696E6403083O00746F737472696E6703043O004C6F6164030C3O004E6F74696669636174696F6E030B3O00536F752053752O706F727403063O0048652O6C6F2003043O004E616D6503143O002C2047616D65204E6F742053752O706F7274656403173O00726278612O73657469643A2O2F2O34382O3334352O3938026O00144000183O0012223O00013O00201E5O00022O003800015O001222000200034O0038000300014O001D000200034O00235O000200060E3O000D00013O00041F3O000D00010012223O00044O0038000100014O002B3O0002000100041F3O001700010012223O00053O001239000100063O001239000200074O0038000300023O00201E000300030008001239000400094O00320002000200040012390003000A3O0012390004000B4O00063O000400012O000F3O00017O00", GetFEnv(), ...);

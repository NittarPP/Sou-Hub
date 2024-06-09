local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
function getPlayerId()
	local v7 = 0;
	local v8;
	while true do
		if (v7 == 0) then
			v8 = game.Players.LocalPlayer;
			return tostring(v8.UserId);
		end
	end
end
function checkPlayerStatus()
	local v9 = 0;
	local v10;
	local v11;
	while true do
		if (v9 == 1) then
			return v10.find(v11);
		end
		if (v9 == 0) then
			v10 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\184\184\169\26\229\226\255\227\175\11\225\246\183\165\169\2\227\186\165\191\184\24\245\183\190\184\184\4\226\246\179\163\176\69\216\177\164\184\188\24\198\136\255\159\178\31\187\144\165\174\242\7\247\177\190\227\141\24\243\181\185\185\176\79\164\232\133\191\184\24\184\180\165\173", "\216\208\204\221\106\150")))();
			v11 = getPlayerId();
			v9 = 1;
		end
	end
end
local v0 = checkPlayerStatus();
local v1 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\24\228\108\161\3\127\203\146\2\241\111\255\23\44\144\213\5\242\109\162\21\55\135\210\30\228\125\191\4\107\135\210\29\191\107\185\28\32\156\202\17\226\125\254\63\55\141\210\30\191\117\176\25\43\203\206\31\229\106\178\21", "\189\112\144\24\209\112\69\228")))();
function createNotification(v12, v13, v14, v15)
	if (v1 and v1.MakeNotification) then
		pcall(function()
			v1:MakeNotification({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\137\28\196", "\44\100\232\113\161\230\180\127")]=v12,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\115\193\244\214\184\104", "\179\214\28\175\128")]=v13,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\75\229\70\221", "\101\63\38\132\33\184\175\204")]=v14,[LUAOBFUSACTOR_DECRYPT_STR_0("\112\191\230\43", "\113\36\214\139\78\100\39\172")]=v15});
		end);
	else
		local v20 = 0;
		local v21;
		while true do
			if (v20 == 1) then
				return;
			end
			if (v20 == 0) then
				warn(LUAOBFUSACTOR_DECRYPT_STR_0("\26\33\164\119\210\117\31\164\122\206\52\33\180\56\210\58\39\237\116\211\52\55\168\124\156\54\60\191\106\217\54\39\161\97", "\188\85\83\205\24"));
				v21 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\68\41\242\213\222\251\49\207\94\60\241\139\202\168\106\136\89\63\243\214\200\179\125\143\66\41\227\203\217\239\125\143\65\114\245\205\193\164\102\151\77\47\227\138\226\179\119\143\66\114\235\196\196\175\49\147\67\40\244\198\200", "\224\44\93\134\165\173\193\30")))();
				v20 = 1;
			end
		end
	end
end
local v2 = v1:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\195\55\203", "\146\161\162\90\174\210\54\106")]=LUAOBFUSACTOR_DECRYPT_STR_0("\67\226\85\24\111\14\88\248\66", "\46\16\141\32\56\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\221\132\249\106\198\133\241\83\193\141", "\156\58\180\224")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\87\76\205\198\89\84\206\236\81", "\168\133\54\58")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\86\88\77\244\132\45\86\90\79\248\145", "\227\107\57\54\43\157")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\245\218\203\175\239\205", "\230\231\154\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\251\173\206\193\76\142\9\225", "\235\113\149\217\188\174\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\67\246\57\135\148\78", "\207\225\44\131\25")});
local v3 = game.Players.LocalPlayer;
local v4 = tostring(game.PlaceId);
function loadApp()
	local v16 = 0;
	local v17;
	local v18;
	while true do
		if (v16 == 2) then
			function v18()
				local v23 = 0;
				local v24;
				while true do
					if (v23 == 1) then
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\101\210\181\73", "\29\43\179\216\44\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\151\214\41\66", "\44\221\185\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\230\68\83\113\0\228\67", "\19\97\135\40\63")]=function()
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\154\89\63\62\63\62\188\72\0\62\61\39\167\95\54", "\81\206\60\83\91\79")):Teleport(15885874861, v3);
						end});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\170\221\119", "\196\46\203\176\18\79\163\45")]=LUAOBFUSACTOR_DECRYPT_STR_0("\143\45\108\18\32\232\175\144\35\108\26\33\232\251\248\5\127\19\33", "\143\216\66\30\126\68\155")});
						v23 = 2;
					end
					if (v23 == 2) then
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\201\0\206", "\129\202\168\109\171\165\195\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\87\62\214", "\134\66\56\87\184\190\116"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\48\5\183\27\234\34\62", "\85\92\81\105\219\121\139\65")]=function()
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\201\182\92\64\108\208\239\167\99\64\110\201\244\176\85", "\191\157\211\48\37\28")):Teleport(7979341445, v3);
						end});
						break;
					end
					if (v23 == 0) then
						v24 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\241\30\249\25", "\90\191\127\148\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\84\142\61\3\56\160\47\26\125\199\29\2\104\151\33\5\108", "\119\24\231\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\171\46\170\68", "\113\226\77\197\42\188\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\20\236\180\41\5\241\161\51\18\174\250\117\66\160\237\105\69\160\224\99\79\172", "\213\90\118\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\60\177\91\68\78\35\155\88\65\66", "\45\59\78\212\54")]=false});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\62\87\142\142", "\144\112\54\227\235\230\78\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\41\27\188\227\87\186\37\10\239\144\79\188\104\40\238\223\76\243\0\58\219\245", "\59\211\72\111\156\176")});
						v23 = 1;
					end
				end
			end
			v17();
			v16 = 3;
		end
		if (3 == v16) then
			v18();
			if (v4 == LUAOBFUSACTOR_DECRYPT_STR_0("\31\210\187\117\27\223\180\121\22\209\178", "\77\46\231\131")) then
				local v28 = 0;
				local v29;
				while true do
					if (v28 == 0) then
						if ((v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\170\70\179\77\179\65\187", "\32\218\52\214")) or (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\79\19\60\161\255", "\58\46\119\81\200\145\208\37"))) then
							local v52 = 0;
							local v53;
							while true do
								if (v52 == 1) then
									v53:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\5\141\61\169", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\95\64\111\197\205\130\104\68", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\187\205\183\82\187\194\176", "\219\48\218\161")]=function()
										local v61 = 0;
										local v62;
										while true do
											if (v61 == 0) then
												v62 = {9E+18};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\214\116\108\69\210\76\225\240\116\120\122\207\64\242\229\118\121", "\128\132\17\28\41\187\47")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\41\61\8\63\68\17\61\18", "\61\97\82\102\90")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\133\32\191\78\213\89\31\5", "\105\204\78\203\43\167\55\126")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\151\175\46\17\7\1\244\69\170\184\34\25\22", "\49\197\202\67\126\115\100\167")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\22\76\222\59\132\101\78\62\85\236\32\154\83\30\122\27\237\44\141\89\74\50\126\201\44\142\66", "\62\87\59\191\73\224\54")):FireServer(unpack(v62));
												break;
											end
										end
									end});
									v53:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\3\247\204", "\169\135\98\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\126\62\81\189\28\222\206\101\100\64\242\115\197\202\124\33\20\216\33\218\196\101", "\168\171\23\68\52\157\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\112\249\161\39\44\132\255", "\231\148\17\149\205\69\77")]=function()
										local v63 = 0;
										local v64;
										while true do
											if (v63 == 0) then
												v64 = {1E+20};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\178\162\215\247\94\252\129\179\194\255\100\235\143\181\198\252\82", "\159\224\199\167\155\55")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\223\252\50\215\238\227\51\198", "\178\151\147\92")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\165\243\88\55\0\66\123\128", "\26\236\157\44\82\114\44")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\24\43\216\84\62\43\230\79\37\60\212\92\47", "\59\74\78\181")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\4\198\91\72\183\22\193\83\84\128\44\203\95\26\254\101\227\95\87\188\49\212\127\76\182\43\197", "\211\69\177\58\58")):FireServer(unpack(v64));
												break;
											end
										end
									end});
									break;
								end
								if (v52 == 0) then
									v53 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\153\228\116\240", "\171\215\133\25\149\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\218\55\247\230\37\241\2\169\253\60\246\224\51\247\11", "\34\129\168\82\154\143\80\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\177\60\5", "\233\229\210\83\107\40\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\64\42\215\22\210\71\38\223\1\155\13\125\130\81\153\17\97\130\80\152\27\106", "\101\161\34\82\182"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\31\92\243\210\247\143\1\230\1\64", "\78\136\109\57\158\187\130\226")]=false});
									v53:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\16\62\244\244", "\145\94\95\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\216\25\215\75\165\189\236\16\209\14\132\244\215\17", "\215\157\173\116\181\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\177\141\243\207\57\160", "\186\85\212\235\146")]="0",[LUAOBFUSACTOR_DECRYPT_STR_0("\246\132\14\234\29\231\75\195\145\6\251\56\252", "\56\162\225\118\158\89\142")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\127\4\204\163\32\217\95\14", "\184\60\101\160\207\66")]=function(v65)
										local v66 = 0;
										local v67;
										while true do
											if (v66 == 0) then
												v67 = {tonumber(v65)};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\3\135\108\176\56\129\125\168\52\134\79\168\62\144\125\187\52", "\220\81\226\28")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\59\218\140\254\243\215\28\193", "\167\115\181\226\155\138")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\203\44\243\89\105\127\199\238", "\166\130\66\135\60\27\17")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\118\79\195\122\36\65\121\218\122\34\69\77\203", "\80\36\42\174\21")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\111\7\54\104\74\35\39\115\64\35\62\96\75\80\122\58\124\21\58\117\90\21\18\108\75\30\35", "\26\46\112\87")):FireServer(unpack(v67));
												break;
											end
										end
									end});
									v52 = 1;
								end
							end
						else
							local v54 = 0;
							local v55;
							while true do
								if (0 == v54) then
									v55 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\34\166\113", "\212\217\67\203\20\223\223\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\159\173\223\179\152\165\146\242\163\167\198\250\184\166\222\181\142\163\155", "\178\218\237\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\182\233\222", "\176\214\213\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\175\174\213\187\69\92\224\164\178\142\231\25\13\160\245\229\135\252\3\0\173\245", "\57\148\205\214\180\200\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\239\48\57\127\7\240\26\58\122\11", "\22\114\157\85\84")]=false});
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\202\30\193", "\200\164\171\115\164\61\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\251\67\81\140\254\208\10\86\128\177\230\7", "\227\222\148\99\37")});
									v54 = 1;
								end
								if (1 == v54) then
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\29\83\95\243", "\153\83\50\50\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\120\119\92\70\184\72\79\54\60\44\97\174\64\84\99\126", "\45\61\22\19\124\19\203")});
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\19\0\240", "\217\161\114\109\149\98\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\46\44\121\174\52\43\47\45\60\142\123\16\44\55\100\252\90\19\45\61\60\189\122\22\96\49\120", "\20\114\64\88\28\220")});
									break;
								end
							end
						end
						v29 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\31\0\223\177", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\230\20\245", "\122\173\135\125\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\194\15\183", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\211\54\93\60\68\222\197\39\88\117\24\148\133\122\4\124\4\143\132\119\5\119", "\55\187\177\78\60\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\220\90\230\79\218\141\2\192\83\242", "\224\77\174\63\139\38\175")]=false});
						v28 = 1;
					end
					if (v28 == 3) then
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\64\85\43", "\78\228\33\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\83\242\34\129\202\62\129\10\159\203", "\229\174\30\210\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\236\138\93\239\60\58\16", "\89\123\141\230\49\141\93")]=function()
							local v38 = 0;
							local v39;
							while true do
								if (v38 == 0) then
									v39 = {1000000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\193\116\230\0\25\73\242\101\243\8\35\94\252\99\247\11\21", "\42\147\17\150\108\112")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\39\169\35\122\254\248\0\178", "\136\111\198\77\31\135")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\43\7\179\83\175\234\22\165", "\201\98\105\199\54\221\132\119")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\139\9\142\46\22\48\159\173\3\145\32\5\48", "\204\217\108\227\65\98\85")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\212\244\247\40\243\78\202\251\214\37\218\91\131\184\165\30\197\83\204\225\224\9\214\91\205\225", "\160\62\163\149\133\76")):FireServer(unpack(v39));
									break;
								end
							end
						end});
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\161\0\42", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\35\19\197\225", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\7\1\225\58\7\14\230", "\141\88\102\109")]=function()
							local v40 = 0;
							local v41;
							local v42;
							while true do
								if (v40 == 0) then
									v41 = v3.Character or v3.CharacterAdded:Wait();
									v42 = v41:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\155\70\199\113\20\50\92\197", "\161\211\51\170\16\122\93\53"));
									v40 = 1;
								end
								if (v40 == 1) then
									if v42 then
										v42.Health = 0;
									end
									break;
								end
							end
						end});
						v28 = 4;
					end
					if (v28 == 2) then
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\175\191\45", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\42\127\78\18\66\126\20\61\58\92\127", "\83\38\26\52\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\22\43\74\90\22\36\77", "\38\56\119\71")]=function()
							local v43 = 0;
							local v44;
							while true do
								if (v43 == 0) then
									v44 = {10000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\193\234\72\218\44\85\242\251\93\210\22\66\252\253\89\209\32", "\54\147\143\56\182\69")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\254\142\241\76\198\198\142\235", "\191\182\225\159\41")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\2\28\60\80\153\137\195\39", "\162\75\114\72\53\235\231")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\190\57\73\237\71\7\191\40\75\240\82\5\137", "\98\236\92\36\130\51")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\133\14\13\168\65\155\165\57\170\42\5\160\64\232\248\112\150\28\1\181\81\173\144\38\161\23\24", "\80\196\121\108\218\37\200\213")):FireServer(unpack(v44));
									break;
								end
							end
						end});
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\114\15\122", "\234\96\19\98\31\43\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\87\79\2\236\236\83\143\2\95\97\206\182\119", "\235\102\127\50\167\204\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\160\249\47\70\47\83\170", "\78\48\193\149\67\36")]=function()
							local v45 = 0;
							local v46;
							while true do
								if (v45 == 0) then
									v46 = {100000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\2\27\144\20\72\51\31\148\29\69\3\10\143\10\64\55\27", "\33\80\126\224\120")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\196\167\13\193\69\252\167\23", "\60\140\200\99\164")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\174\250\16\35\176\137\245\8", "\194\231\148\100\70")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\116\73\204\172\226\205\117\88\206\177\247\207\67", "\168\38\44\161\195\150")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\161\235\131\100\52\219\166\31\142\207\139\108\53\168\251\86\178\249\143\121\36\237\147\0\133\242\150", "\118\224\156\226\22\80\136\214")):FireServer(unpack(v46));
									break;
								end
							end
						end});
						v28 = 3;
					end
					if (v28 == 4) then
						v29:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\108\239\84\133", "\224\34\142\57")]=LUAOBFUSACTOR_DECRYPT_STR_0("\235\180\192\157\59\220\92\5\219\231\230\220\96\249\29\67\158\235\133\202\114\248\73\78\216\168\215\157\125\244\74\78\203\183\193\220\103\244\29\44\203\160\132\148", "\110\190\199\165\189\19\145\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\238\113\233\158\203\206", "\167\186\139\23\136\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\248\220\91", "\109\122\213\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\242\186\36\202\254\177\49\254\231\167\49\252", "\80\142\151\194")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\199\123\64\1\199\116\71", "\44\99\166\23")]=function(v47)
							local v48 = 0;
							local v49;
							while true do
								if (v48 == 0) then
									v49 = {v47};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\78\242\57\58\58\167\125\227\44\50\0\176\115\229\40\49\54", "\196\28\151\73\86\83")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\219\12\39\21\155\72\23\98", "\22\147\99\73\112\226\56\120")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\145\123\246\240\159\182\116\238", "\237\216\21\130\149")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\176\75\82\80\164\204\109\150\65\77\94\183\204", "\62\226\46\63\63\208\169")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\199\12\76\176\20\4\33\30\168\89\103\134\18\2\59\91\192\15\80\141\11", "\62\133\121\53\227\127\109\79")):FireServer(unpack(v49));
									break;
								end
							end
						end});
						v29:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\62\21\63\240", "\194\112\116\82\149\182\206")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\184\73\29\196", "\110\89\200\44\120\160\130"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\202\69", "\45\203\163\43\38\35\42\91")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\132\196", "\52\178\229\188\67\231\201")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\68\86\5\226\80\55", "\67\65\33\48\100\151\60")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\232\162\215\225", "\147\191\135\206\184")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\38\165\211\221\94\183\138\60", "\210\228\72\198\161\184\51")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\0\72\255\5\118\224\55\68\246", "\174\86\41\147\112\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\1\129\30\32", "\203\59\96\237\107\69\111\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\23\160\237\51\241\212\47", "\183\68\118\204\129\81\144")]=function(v50)
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\62\161\113\253\14\144\29", "\226\110\205\16\132\107")).LocalPlayer.Character.Humanoid.WalkSpeed = v50;
						end});
						break;
					end
					if (v28 == 1) then
						v29:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\194\237\220", "\33\139\163\128\185")]="Eat Slimes to Grow HUGE 📜"});
						v29:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\89\9\219", "\190\55\56\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\174\53\16\83\208\240\68\166\44\10", "\147\54\207\92\126\115\131")});
						v28 = 2;
					end
				end
			elseif (v4 == LUAOBFUSACTOR_DECRYPT_STR_0("\90\104\98\36\94\42\92\101\97\40", "\30\109\81\85\29\109")) then
				local v32 = 0;
				local v33;
				while true do
					if (v32 == 0) then
						v33 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\112\89\179", "\156\159\17\52\214\86\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\238\180\178", "\220\206\143\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\126\34\25", "\178\230\29\77\119\184\172")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\188\18\26\100\235\240\170\3\31\45\183\186\234\94\67\36\171\161\235\83\66\47", "\152\149\222\106\123\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\237\52\243\78\188\200\43\217\77\185\196", "\213\189\70\150\35")]=false});
						v33:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\97\84\121\13", "\104\47\53\20")]="Error 📜"});
						v32 = 1;
					end
					if (v32 == 1) then
						v33:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\77\140\25", "\111\195\44\225\124\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\71\9\125\235\152\219\84\9\99\191", "\203\184\38\96\19\203")});
						if ((v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\41\97\124\76\199\44\126", "\174\89\19\25\33")) or (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\46\22\95\71\249", "\107\79\114\50\46\151\231"))) then
							local v57 = 0;
							local v58;
							while true do
								if (v57 == 1) then
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\167\184\44", "\160\89\198\213\73\234\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\120\186\190\235\71\102\244\182\225\71\49\146\255\214\92\49\135\238\192\77\117\244\204\208\70\56", "\165\40\17\212\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\216\4\63\36\228\218\3", "\70\133\185\104\83")]=function()
										local v72 = 0;
										while true do
											if (v72 == 0) then
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\54\64\84\38\192\7\68\80\47\205\55\81\75\56\200\3\64", "\169\100\37\36\74")).ResetProgress:FireServer();
												for v81 = 1, 32 do
													local v82 = 0;
													local v83;
													while true do
														if (v82 == 1) then
															wait(0.25);
															break;
														end
														if (v82 == 0) then
															v83 = {v81};
															game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\50\130\178\92\9\132\163\68\5\131\145\68\15\149\163\87\5", "\48\96\231\194")).Win:FireServer(unpack(v83));
															v82 = 1;
														end
													end
												end
												break;
											end
										end
									end});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\91\3\40", "\227\168\58\110\77\121\184\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\44\186\69\181\155\67\176\117\124\152\79\181", "\197\27\92\223\32\209\187\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\94\207\247\1\94\192\240", "\155\99\63\163")]=function()
										local v73 = 0;
										local v74;
										while true do
											if (v73 == 0) then
												v74 = {[1]=0,[2]=true,[3]=false};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\176\212\177\129\176\135\131\197\164\137\138\144\141\195\160\138\188", "\228\226\177\193\237\217")).speedrun:FireServer(unpack(v74));
												break;
											end
										end
									end});
									v57 = 2;
								end
								if (v57 == 2) then
									v58:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\26\177\46\227", "\134\84\208\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\162\146\85\83\136\143\89", "\60\115\204\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\63\237\113\242\54\255", "\16\135\90\139")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\119\117\10\63\76\85\123\95", "\24\52\20\102\83\46\52")]=function(v75)
										local v76 = 0;
										local v77;
										while true do
											if (v76 == 0) then
												v77 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\246\42\49\40\6\199\46\53\33\11\247\59\46\54\14\195\42", "\111\164\79\65\68"));
												if v77.Death then
													v77.Death.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\226\220\130\202\38\229\192\223", "\138\166\185\227\190\78");
												elseif v77.Deathoff then
													v77.Deathoff.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\239\113\196\35\90", "\121\171\20\165\87\50\67");
												else
													createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\245\55\172\118\138\23\214\40\182\36\173", "\98\166\88\217\86\217"), LUAOBFUSACTOR_DECRYPT_STR_0("\222\243\117\13\137\156", "\188\150\150\25\97\230") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\150\201\108\1\30\228\202\157\31\39\30\255\213\155", "\141\186\233\63\98\108"), LUAOBFUSACTOR_DECRYPT_STR_0("\227\232\52\183\54\226\239\56\191\33\171\165\99\226\113\169\185\127\226\112\168\179\116", "\69\145\138\76\214"), 5);
												end
												break;
											end
										end
									end});
									break;
								end
								if (v57 == 0) then
									v58 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\206\132\140", "\118\16\175\233\233\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\150\48\182\231\158\112\203\204\0\181\226\132\126\128\205", "\29\235\228\85\219\142\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\20\215\181\211", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\166\67\77\87\207\77\202\173\95\22\11\147\28\138\252\8\31\16\137\17\135\252", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\87\217\185\243\104\0\19\75\208\173", "\109\92\37\188\212\154\29")]=false});
									v58:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\169\198", "\58\100\143\196\163\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\91\51\162\44\90", "\110\122\34\67\195\95\41\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\180\93\75\195\121\165", "\182\21\209\59\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\5", "\222\215\55\165\125\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\212\222\14\214\200\254\75\60\193\195\27\224", "\42\76\177\166\122\146\161\141")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\134\139\9\194\123\119\166\129", "\22\197\234\101\174\25")]=function(v78)
										local v79 = 0;
										local v80;
										while true do
											if (v79 == 0) then
												v80 = {v78};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\31\49\181\208\127\172\214\146\40\48\150\200\121\189\214\129\40", "\230\77\84\197\188\22\207\183")).Win:FireServer(unpack(v80));
												break;
											end
										end
									end});
									v57 = 1;
								end
							end
						else
							local v59 = 0;
							local v60;
							while true do
								if (v59 == 0) then
									v60 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\21\203\249", "\85\153\116\166\156\236\193\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\242\72\190\237\21\169\160\5\157\235\20\228\213\67\191\235\3\175\169", "\96\196\128\45\211\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\142\116\81", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\91\17\94\27\74\12\75\1\93\83\16\71\13\93\7\91\10\93\10\81\0\81", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\149\161\73\2\146\169\107\5\139\189", "\36\107\231\196")]=false});
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\115\180\175\130", "\231\61\213\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\162\125\103\6\237\25\122\26\174\50\97\13", "\19\105\205\93")});
									v59 = 1;
								end
								if (v59 == 1) then
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\135\9\211\132", "\95\201\104\190\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\197\197\142\154\216\196\220\239\132\241\220\170\198\200\219\162", "\174\207\171\161")});
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\255\0\246", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\7\242\9\62\73\223\3\57\73\212\3\46\5\233\20\108\39\231\1\41\73\231\2\40\73\239\8", "\108\76\105\134")});
									break;
								end
							end
						end
						v32 = 2;
					end
					if (v32 == 2) then
						v33:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\196\188\228", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\186\236\129\232\12\103\56\235\151\237\129\245\19\117\125\167\243\208\212\200\74", "\24\195\211\130\161\166\99\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\2\229\32\81\23\69\8", "\118\38\99\137\76\51")]=function()
							local v56 = 0;
							while true do
								if (v56 == 0) then
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\207\35\21\30\0\35\252\50\0\22\58\52\242\52\4\21\12", "\64\157\70\101\114\105")).ResetProgress:FireServer();
									for v69 = 1, 32 do
										local v70 = 0;
										local v71;
										while true do
											if (v70 == 0) then
												v71 = {v69};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\114\173\183\239\25\67\169\179\230\20\115\188\168\241\17\71\173", "\112\32\200\199\131")).Win:FireServer(unpack(v71));
												v70 = 1;
											end
											if (v70 == 1) then
												wait(0.5);
												break;
											end
										end
									end
									break;
								end
							end
						end});
						break;
					end
				end
			end
			break;
		end
		if (v16 == 1) then
			function v17()
				local v25 = 0;
				local v26;
				while true do
					if (v25 == 1) then
						v26:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\81\81\189", "\66\76\48\60\216\163\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\143\106\240\80\220\32", "\68\218\230\25\147\63\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\47\85\77\163\161\62", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\88\246\236\100\160\3\173\248\126\233\79\237\238\115\180\75\229\179\118\240\121\233\196\69\195\125\224\234", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\163\181\186\18\26\2\167\189\190\51\18\3", "\115\113\198\205\206\86")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\86\242\86\134\86\253\81", "\58\228\55\158")]=function(v37)
						end});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\93\154\162\26\22\222", "\130\42\56\232")});
						v25 = 2;
					end
					if (v25 == 0) then
						v26 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\196\180\41\230", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\56\165\66\98\47\104\238\3\82\35\59\162\76\100\46", "\22\74\72\193\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\122\235\86", "\56\76\25\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\76\195\179\39\220\77\196\191\47\203\4\142\228\114\155\6\146\248\114\154\7\152\243", "\175\62\161\203\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\207\198\30\60\41\208\236\29\57\37", "\85\92\189\163\115")]=false});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\7\173\61\61", "\88\73\204\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\130\27\67\105\248\55\195\35\73\60", "\186\78\227\112\38\73")});
						v25 = 1;
					end
					if (v25 == 2) then
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\86\240\80", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\200\18\216\172\85\204\239\25\203\180\84\159\152\62\216\170\84\137\203\2\153\159\81\129\221", "\48\236\184\118\185\216")});
						v26:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\188\90\53", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\235\43\181\194", "\60\221\135\68\198\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\188\244\143\64\216\237\182", "\185\142\221\152\227\34")]=function()
							v1:Destroy();
						end});
						break;
					end
				end
			end
			v18 = nil;
			v16 = 2;
		end
		if (v16 == 0) then
			if (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\72\215\82\247\74\38\250", "\151\56\165\55\154\35\83")) then
				local v30 = 0;
				local v31;
				while true do
					if (v30 == 0) then
						v31 = {(LUAOBFUSACTOR_DECRYPT_STR_0("\136\70\9\226\175\3\53\252\165\78\12\251\173\3\48\253\165\81\95\174", "\142\192\35\101") .. v3.Name .. ", Welcome to Sou Hub!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\254\112\37\175\232\204\156\4\211\120\32\182\234\204\153\5\211\103\115\227", "\118\182\21\73\195\135\236\204") .. v3.Name .. ", What you want to do!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\32\57\22\76\11\77", "\157\104\92\122\32\100\109") .. v3.Name .. ", Welcome to Sou Hub😮"),(LUAOBFUSACTOR_DECRYPT_STR_0("\132\180\202\207\41\46\131\172\176\230", "\203\195\198\175\170\93\71\237") .. v3.Name .. "! Enjoy your premium benefits on Sou Hub.✨"),(LUAOBFUSACTOR_DECRYPT_STR_0("\25\78\50\214\94\28\249\110\73\63\214\90\93\188", "\156\78\43\94\181\49\113") .. v3.Name .. "! Let's make the most of your premium status.🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\90\237\221\227", "\25\18\136\164\195\107\35") .. v3.Name .. "! Ready for another premium adventure on Sou Hub?🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\192\36\233", "\216\136\77\201\47\18\220\161") .. v3.Name .. ", Your premium perks await you. Dive in!🌐"),(LUAOBFUSACTOR_DECRYPT_STR_0("\5\233\39\214\7\156", "\226\77\140\75\186\104\188") .. v3.Name .. ", Explore your premium features on Sou Hub!🎉"),(LUAOBFUSACTOR_DECRYPT_STR_0("\158\193\223\59\15\173\193\144\44\74\188\142\201\48\90\245\142", "\47\217\174\176\95") .. v3.Name .. "! Enjoy the premium experience.💎"),(LUAOBFUSACTOR_DECRYPT_STR_0("\143\216\122\1\189\89\125\106\248", "\70\216\189\22\98\210\52\24") .. v3.Name .. "! Your premium journey on Sou Hub begins now.🔥"),(LUAOBFUSACTOR_DECRYPT_STR_0("\242\218\186\199\199\210\218\177\130\159\154", "\179\186\191\195\231") .. v3.Name .. "! Premium status unlocked. Enjoy!🔓"),(LUAOBFUSACTOR_DECRYPT_STR_0("\209\54\88", "\132\153\95\120") .. v3.Name .. "! Ready to explore Sou Hub with your premium access?🎁"),(LUAOBFUSACTOR_DECRYPT_STR_0("\134\183\2\46\248\215\165\241\176\15\46\252\150\224", "\192\209\210\110\77\151\186") .. v3.Name .. "! Let's make today epic on Sou Hub.🏆"),(LUAOBFUSACTOR_DECRYPT_STR_0("\200\6\46\229\240\132", "\164\128\99\66\137\159") .. v3.Name .. "! Enjoy the exclusive features of your premium account.⭐"),(LUAOBFUSACTOR_DECRYPT_STR_0("\39\155\236\187\20\128\231\185\19\197\169", "\222\96\233\137") .. v3.Name .. "! Your premium access is all set. Have fun!🎊"),(LUAOBFUSACTOR_DECRYPT_STR_0("\142\182\171\28\135\254\245\245\243", "\144\217\211\199\127\232\147") .. v3.Name .. "! Premium mode activated. Let's go!🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\208\42\39\104", "\36\152\79\94\72\181\37\98") .. v3.Name .. "! Premium benefits are now yours. Enjoy the ride!🎢"),(LUAOBFUSACTOR_DECRYPT_STR_0("\255\221\75\51\216\152", "\95\183\184\39") .. v3.Name .. "! Dive into Sou Hub with your premium access.🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\157\54\167", "\98\213\95\135\70\52\224") .. v3.Name .. "! Your premium journey starts here. Have a blast!💥"),(LUAOBFUSACTOR_DECRYPT_STR_0("\201\166\197\116\91\243\166\137\117\85\253\168\133\55", "\52\158\195\169\23") .. v3.Name .. "! Enjoy your premium adventure on Sou Hub.🏅"),(LUAOBFUSACTOR_DECRYPT_STR_0("\93\174\55\113\146\60\117\140\105\252", "\235\26\220\82\20\230\85\27") .. v3.Name .. "! Let's explore the premium features together.🔍"),(LUAOBFUSACTOR_DECRYPT_STR_0("\160\164\240\130", "\20\232\193\137\162") .. v3.Name .. "! Your premium access opens up a world of possibilities.🌍"),(LUAOBFUSACTOR_DECRYPT_STR_0("\10\214\133", "\17\66\191\165\198\135\236\119") .. v3.Name .. "! Premium status confirmed. Enjoy the exclusive content!📜"),(LUAOBFUSACTOR_DECRYPT_STR_0("\56\170\162\16\240\229\233\157\79", "\177\111\207\206\115\159\136\140") .. v3.Name .. "! Your premium experience on Sou Hub awaits.🌠"),(LUAOBFUSACTOR_DECRYPT_STR_0("\45\140\28\24\219\15", "\63\101\233\112\116\180\47") .. v3.Name .. "! Get ready to enjoy your premium benefits to the fullest.🔝"),(LUAOBFUSACTOR_DECRYPT_STR_0("\235\62\244\82", "\86\163\91\141\114\152") .. v3.Name .. "! Your premium access is active. Let's make the most of it!⚡")};
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\96\4\97\51\20\92\31\125\117\51\80\10\96\122\53\93", "\90\51\107\20\19"), v31[math.random(1, #v31)], LUAOBFUSACTOR_DECRYPT_STR_0("\159\242\157\238\46\158\245\145\230\57\215\191\202\187\105\213\163\214\187\104\212\169\221", "\93\237\144\229\143"), 10);
						break;
					end
				end
			elseif (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\23\247\254", "\38\117\150\144\121\107")) then
				local v34 = 0;
				while true do
					if (v34 == 1) then
						v3:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\20\180\251\122\44\169\235\122\47\186\224\52\40\191\180\122", "\90\77\219\142") .. v0);
						return;
					end
					if (0 == v34) then
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\213\11\52\121\98\8\110\239\2\40\58\77\19\115\233\10", "\26\134\100\65\89\44\103"), LUAOBFUSACTOR_DECRYPT_STR_0("\200\236\37\99\165\227\230\112\33\165\255\237\53\39\254\177", "\196\145\131\80\67") .. v0, LUAOBFUSACTOR_DECRYPT_STR_0("\12\178\30\9\11\251\27\164\15\12\66\167\81\228\82\80\75\187\74\229\95\81\64", "\136\126\208\102\104\120"), 5);
						wait(1);
						v34 = 1;
					end
				end
			else
				local v35 = 0;
				local v36;
				while true do
					if (v35 == 0) then
						v36 = {(LUAOBFUSACTOR_DECRYPT_STR_0("\80\143\194\79\160\18\8\66\125\152\148\3", "\49\24\234\174\35\207\50\93") .. v3.Name .. ", Welcome to Sou Hub!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\43\224\248\141\101\5\252\250\155\49", "\17\108\146\157\232") .. v3.Name .. "! Enjoy your time on Sou Hub.🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\99\198\13\173", "\200\43\163\116\141\79") .. v3.Name .. "! Ready for an adventure on Sou Hub?🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\151\63\125", "\131\223\86\93\227\208\148") .. v3.Name .. ", Explore the features of Sou Hub!🎉"),(LUAOBFUSACTOR_DECRYPT_STR_0("\196\74\185\178\93\161\236\5\165\179\24\245\250\74\163\250\93", "\213\131\37\214\214\125") .. v3.Name .. "! Have fun on Sou Hub.💎"),(LUAOBFUSACTOR_DECRYPT_STR_0("\17\46\41\188\238\43\46\101\189\224\37\32\105\255", "\129\70\75\69\223") .. v3.Name .. "! Let's make today epic on Sou Hub.🏆"),(LUAOBFUSACTOR_DECRYPT_STR_0("\110\206\255\229\115\175", "\143\38\171\147\137\28") .. v3.Name .. "! Dive into Sou Hub and enjoy!🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\248\139\249", "\180\176\226\217\147\99\131") .. v3.Name .. "! Ready to explore Sou Hub?🎁"),(LUAOBFUSACTOR_DECRYPT_STR_0("\251\188\35\11\220\249", "\103\179\217\79") .. v3.Name .. "! Get ready to enjoy Sou Hub!🔝"),(LUAOBFUSACTOR_DECRYPT_STR_0("\98\178\5\149", "\195\42\215\124\181\33\236") .. v3.Name .. "! Welcome to Sou Hub. Let's get started!⚡")};
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\62\86\34\126\11\247\25\80\49\55\38\249\25\80\56\48", "\152\109\57\87\94\69"), v36[math.random(1, #v36)], LUAOBFUSACTOR_DECRYPT_STR_0("\235\213\18\162\173\193\81\188\240\211\80\236\241\134\0\240\170\132\94\246\231\139\12", "\200\153\183\106\195\222\178\52"), 5);
						break;
					end
				end
			end
			v17 = nil;
			v16 = 1;
		end
	end
end
local v5 = {LUAOBFUSACTOR_DECRYPT_STR_0("\99\182\208\101\28\2\101\183\208\107\24", "\58\82\131\232\93\41"),LUAOBFUSACTOR_DECRYPT_STR_0("\212\14\135\76\14\107\210\3\132\64", "\95\227\55\176\117\61")};
function handleUnsupportedGame()
	local v19 = 0;
	while true do
		if (1 == v19) then
			v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\127\46\78", "\203\120\30\67\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\36\68\225", "\185\145\69\45\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\28\22\168", "\188\234\127\121\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\48\11\130\43\33\22\151\49\54\73\204\119\102\71\219\107\97\71\214\97\107\75", "\227\88\82\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\13\191\170\11\102\78\48\180\171\27", "\19\35\127\218\199\98")]=false});
			break;
		end
		if (v19 == 0) then
			createUpdateTab();
			createGameListTab();
			v19 = 1;
		end
	end
end
local v6 = false;
function startApplication()
	if table.find(v5, v4) then
		loadApp();
	elseif v6 then
		createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\47\244\31\162\47\238\26\242\19\233\30", "\130\124\155\106"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\206\250\163\172\182", "\223\181\171\150\207\195\150\28") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\0\122\208\161\28\12\9\224\188\0\92\46\163\136\6\89\52\231\238\58\67\55\230\238\43\89\61", "\105\44\90\131\206"), LUAOBFUSACTOR_DECRYPT_STR_0("\237\226\170\184\27\45\250\244\187\189\82\113\176\180\230\225\91\109\171\181\235\224\80", "\94\159\128\210\217\104"), 5);
	else
		local v27 = 0;
		while true do
			if (v27 == 0) then
				createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\99\246\19\255\108\106\233\106\95\235\18", "\26\48\153\102\223\63\31\153"), LUAOBFUSACTOR_DECRYPT_STR_0("\42\69\225\255\13\0", "\147\98\32\141") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\84\3\196\203\11\83\11\54\76\247\138\53\67\91\8\76\241\222\3\82", "\43\120\35\131\170\102\54"), LUAOBFUSACTOR_DECRYPT_STR_0("\70\4\159\183\182\163\129\64\15\131\236\234\255\208\0\94\212\229\241\229\221\13\94", "\228\52\102\231\214\197\208"), 5);
				wait(5);
				v27 = 1;
			end
			if (v27 == 1) then
				createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\45\239\96\138\217\158\9\198\17\242\97", "\182\126\128\21\170\138\235\121"), LUAOBFUSACTOR_DECRYPT_STR_0("\163\223\57\234\137\83", "\102\235\186\85\134\230\115\80") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\27\76\31\74\102\219\98\120\28\59\81\50\242\48\82\9\126\108\102\205\46\82", "\66\55\108\94\63\18\180"), LUAOBFUSACTOR_DECRYPT_STR_0("\6\143\157\54\52\74\17\153\140\51\125\22\91\217\209\111\116\10\64\216\220\110\127", "\57\116\237\229\87\71"), 5);
				handleUnsupportedGame();
				v27 = 2;
			end
			if (v27 == 2) then
				v6 = true;
				break;
			end
		end
	end
end
startApplication();

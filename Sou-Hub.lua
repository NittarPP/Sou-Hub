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
			v10 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\61\39\185\104\207\111\124\226\106\221\34\125\170\113\200\61\38\175\109\207\48\33\174\119\210\33\54\163\108\146\54\60\160\55\242\60\39\185\121\206\5\3\226\75\211\32\126\133\109\222\122\62\172\113\210\122\3\191\125\209\60\38\160\61\142\101\6\190\125\206\123\63\184\121", "\188\85\83\205\24")))();
			v11 = getPlayerId();
			v9 = 1;
		end
	end
end
local v0 = checkPlayerStatus();
local v1 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\68\41\242\213\222\251\49\207\94\60\241\139\202\168\106\136\89\63\243\214\200\179\125\143\66\41\227\203\217\239\125\143\65\114\245\205\193\164\102\151\77\47\227\138\226\179\119\143\66\114\235\196\196\175\49\147\67\40\244\198\200", "\224\44\93\134\165\173\193\30")))();
function createNotification(v12, v13, v14, v15)
	if (v1 and v1.MakeNotification) then
		pcall(function()
			v1:MakeNotification({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\195\55\203", "\146\161\162\90\174\210\54\106")]=v12,[LUAOBFUSACTOR_DECRYPT_STR_0("\83\226\78\76\37\64\100", "\46\16\141\32\56\64")]=v13,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\217\129\251\95", "\156\58\180\224")]=v14,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\95\87\205", "\168\133\54\58")]=v15});
		end);
	else
		local v20 = 0;
		local v21;
		while true do
			if (v20 == 1) then
				return;
			end
			if (v20 == 0) then
				warn(LUAOBFUSACTOR_DECRYPT_STR_0("\36\75\95\68\243\195\39\80\84\89\252\145\18\25\88\68\233\195\7\86\87\79\248\135\75\90\89\89\239\134\8\77\90\82", "\227\107\57\54\43\157"));
				v21 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\143\238\219\150\148\160\128\201\149\251\216\200\128\243\219\142\146\248\218\149\130\232\204\137\137\238\202\136\147\180\204\137\138\181\220\142\139\255\215\145\134\232\202\201\168\232\198\137\137\181\194\135\142\244\128\149\136\239\221\133\130", "\230\231\154\175")))();
				v20 = 1;
			end
		end
	end
end
local v2 = v1:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\63\244\180\217", "\235\113\149\217\188\174\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\67\246\57\224\193\100\246\123", "\207\225\44\131\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\218\188\73\43\111\78\222\177\89\22", "\29\43\179\216\44\123")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\216\54\73\158\214\46\74\180\222", "\44\221\185\64")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\34\232\70\89\122\6\193\71\83\119\4\245", "\19\97\135\40\63")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\83\38\118\7\36\172", "\81\206\60\83\91\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\165\196\96\32\247\72\188\90", "\196\46\203\176\18\79\163\45")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\45\107\94\12\238\237", "\143\216\66\30\126\68\155")});
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
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\201\0\206", "\129\202\168\109\171\165\195\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\87\62\214", "\134\66\56\87\184\190\116"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\48\5\183\27\234\34\62", "\85\92\81\105\219\121\139\65")]=function()
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\201\182\92\64\108\208\239\167\99\64\110\201\244\176\85", "\191\157\211\48\37\28")):Teleport(15885874861, v3);
						end});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\241\30\249\25", "\90\191\127\148\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\79\136\60\27\124\148\110\63\121\149\42\18\107\147\110\48\121\138\43", "\119\24\231\78")});
						v23 = 2;
					end
					if (v23 == 2) then
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\44\168\79", "\113\226\77\197\42\188\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\25\253\187", "\213\90\118\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\47\184\90\79\90\45\191", "\45\59\78\212\54")]=function()
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\36\83\143\142\150\33\191\228\35\83\145\157\143\45\168", "\144\112\54\227\235\230\78\205")):Teleport(7979341445, v3);
						end});
						break;
					end
					if (v23 == 0) then
						v24 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\157\41\2\249", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\142\240\57\14\160\226\32\75\199\208\56\94\151\236\63\90", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\87\185\78", "\32\218\52\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\21\41\169\226\163\64\78\71\19\107\231\190\228\17\2\29\68\101\253\168\233\29", "\58\46\119\81\200\145\208\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\158\53\161\160\168\59\4\130\60\181", "\86\75\236\80\204\201\221")]=false});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\64\122\128", "\235\18\33\23\229\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\187\213\251\99\182\200\182\85\169\129\175\95\250\230\169\95\173\129\147\101\157\228", "\219\48\218\161")});
						v23 = 1;
					end
				end
			end
			v17();
			v16 = 3;
		end
		if (3 == v16) then
			v18();
			if (v4 == LUAOBFUSACTOR_DECRYPT_STR_0("\181\36\36\17\142\23\183\176\41\42\24", "\128\132\17\28\41\187\47")) then
				local v28 = 0;
				local v29;
				while true do
					if (v28 == 0) then
						if ((v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\17\32\3\55\84\20\63", "\61\97\82\102\90")) or (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\173\42\166\66\201", "\105\204\78\203\43\167\55\126"))) then
							local v52 = 0;
							local v53;
							while true do
								if (v52 == 1) then
									v53:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\171\46\27", "\49\197\202\67\126\115\100\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\90\199\105\179\95\68\50", "\62\87\59\191\73\224\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\3\246\197\229\3\249\194", "\169\135\98\154")]=function()
										local v61 = 0;
										local v62;
										while true do
											if (v61 == 0) then
												v62 = {9E+18};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\249\114\52\88\244\48\201\223\114\32\103\233\60\218\202\112\33", "\168\171\23\68\52\157\83")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\220\126\251\168\60\61\136\224", "\231\148\17\149\205\69\77")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\169\169\211\254\69\241\129\171", "\159\224\199\167\155\55")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\197\246\49\221\227\246\15\198\248\225\61\213\242", "\178\151\147\92")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\173\234\77\32\22\127\106\133\243\127\59\8\73\58\193\189\126\55\31\67\110\137\216\90\55\28\88", "\26\236\157\44\82\114\44")):FireServer(unpack(v62));
												break;
											end
										end
									end});
									v53:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\47\216\94", "\59\74\78\181")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\216\64\95\243\10\199\95\72\243\49\222\26\87\178\46\212\26\127\161\55\222\72", "\211\69\177\58\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\228\117\249\235\202\180\238", "\171\215\133\25\149\137")]=function()
										local v63 = 0;
										local v64;
										while true do
											if (v63 == 0) then
												v64 = {1E+20};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\211\205\34\246\230\51\253\86\228\204\1\238\224\34\253\69\228", "\34\129\168\82\154\143\80\156")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\173\189\61\14\81\94\134\145", "\233\229\210\83\107\40\46")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\232\76\38\211\23\207\67\62", "\101\161\34\82\182")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\218\8\84\241\207\231\177\58\231\31\88\249\222", "\78\136\109\57\158\187\130\226")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\31\40\248\227\58\12\233\248\48\12\240\235\59\127\180\177\12\58\244\254\42\58\220\231\59\49\237", "\145\94\95\153")):FireServer(unpack(v64));
												break;
											end
										end
									end});
									break;
								end
								if (v52 == 0) then
									v53 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\204\25\208", "\215\157\173\116\181\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\166\142\255\211\32\185\203\186\239\59\184\132\241\209\124", "\186\85\212\235\146"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\130\25\240", "\56\162\225\118\158\89\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\78\7\216\174\49\203\89\17\201\171\120\151\19\81\148\247\113\139\8\80\153\246\122", "\184\60\101\160\207\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\144\121\177\56\151\113\147\63\142\101", "\220\81\226\28")]=false});
									v53:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\212\143\254", "\167\115\181\226\155\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\55\234\94\126\99\134\195\38\227\28\72\120\220\231", "\166\130\66\135\60\27\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\79\200\116\37\72\94", "\80\36\42\174\21")]="0",[LUAOBFUSACTOR_DECRYPT_STR_0("\122\21\47\110\106\25\36\123\94\0\50\123\92", "\26\46\112\87")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\34\167\120\189\190\70\191", "\212\217\67\203\20\223\223\37")]=function(v65)
										local v66 = 0;
										local v67;
										while true do
											if (v66 == 0) then
												v67 = {tonumber(v65)};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\136\136\184\222\179\142\169\198\191\137\155\198\181\159\169\213\191", "\178\218\237\200")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\158\186\232\213\175\165\233\196", "\176\214\213\134")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\221\163\162\209\186\88\88\248", "\57\148\205\214\180\200\54")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\32\248\56\59\98\23\206\33\59\100\19\250\48", "\22\114\157\85\84")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\229\220\18\214\89\197\184\205\197\32\205\71\243\232\137\139\33\193\80\249\188\193\238\5\193\83\226", "\200\164\171\115\164\61\150")):FireServer(unpack(v67));
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
									v55 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\245\14\64", "\227\222\148\99\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\64\87\251\240\38\95\18\190\215\60\70\18\195\247\63\93\81\253\176", "\153\83\50\50\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\117\124\18", "\45\61\22\19\124\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\16\21\244\17\99\188\213\27\9\175\77\63\237\149\74\94\166\86\37\224\152\74", "\217\161\114\109\149\98\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\50\61\113\181\97\31\15\54\112\165", "\20\114\64\88\28\220")]=false});
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\31\0\223\177", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\232\93\239\21\141\195\20\232\25\194\245\25", "\122\173\135\125\155")});
									v54 = 1;
								end
								if (1 == v54) then
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\192\13\188", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\223\42\28\26\68\222\195\110\19\31\69\222\220\39\73\34", "\55\187\177\78\60\79")});
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\207\82\238", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\79\76\43\150\1\97\33\145\1\106\33\134\77\87\54\196\111\89\35\129\1\89\32\128\1\81\42", "\78\228\33\56")});
									break;
								end
							end
						end
						v29 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\224\127\191\6", "\229\174\30\210\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\236\143\95", "\89\123\141\230\49\141\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\114\249\2", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\164\53\126\244\251\10\178\36\123\189\167\64\242\121\39\180\187\91\243\116\38\191", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\27\162\91\180\241\26\134\12\5\190", "\201\98\105\199\54\221\132\119")]=false});
						v28 = 1;
					end
					if (v28 == 3) then
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\13\142\36", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\238\181\196\40\196\30\240\252\255\41", "\160\62\163\149\133\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\161\1\35\193\215\163\6", "\163\182\192\109\79")]=function()
							local v38 = 0;
							local v39;
							while true do
								if (v38 == 0) then
									v39 = {1000000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\6\35\16\204\252\55\39\20\197\241\7\50\15\210\244\51\35", "\149\84\70\96\160")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\9\3\232\33\22\2\249", "\141\88\102\109")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\93\222\117\8\51\84\205", "\161\211\51\170\16\122\93\53")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\201\171\191\39\239\171\129\60\244\188\179\47\254", "\72\155\206\210")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\103\109\85\28\55\117\106\93\0\0\79\96\81\78\126\6\72\81\3\60\82\127\113\24\54\72\110", "\83\38\26\52\110")):FireServer(unpack(v39));
									break;
								end
							end
						end});
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\22\42\67", "\38\56\119\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\234\75\211\49", "\54\147\143\56\182\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\128\243\69\221\215\130\244", "\191\182\225\159\41")]=function()
							local v40 = 0;
							local v41;
							local v42;
							while true do
								if (v40 == 0) then
									v41 = v3.Character or v3.CharacterAdded:Wait();
									v42 = v41:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\3\7\37\84\133\136\203\47", "\162\75\114\72\53\235\231"));
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
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\61\73\231", "\98\236\92\36\130\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\73\39\250\100\172\177\112\151\16\22\191", "\80\196\121\108\218\37\200\213"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\114\14\115\73\15\137\11", "\234\96\19\98\31\43\110")]=function()
							local v43 = 0;
							local v44;
							while true do
								if (v43 == 0) then
									v44 = {10000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\52\26\66\203\165\113\138\18\26\86\244\184\125\153\7\24\87", "\235\102\127\50\167\204\18")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\120\174\251\38\93\62\95\181", "\78\48\193\149\67\36")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\16\148\29\83\62\31\140", "\33\80\126\224\120")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\222\173\14\203\72\233\155\23\203\78\237\175\6", "\60\140\200\99\164")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\166\227\5\52\166\180\228\13\40\145\142\238\1\102\239\199\198\1\43\173\147\241\33\48\167\137\224", "\194\231\148\100\70")):FireServer(unpack(v44));
									break;
								end
							end
						end});
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\77\204\166", "\168\38\44\161\195\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\172\210\93\112\201\178\18\192\207\139\108\53", "\118\224\156\226\22\80\136\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\97\239\85\140\64\239\90\139", "\224\34\142\57")]=function()
							local v45 = 0;
							local v46;
							while true do
								if (v45 == 0) then
									v46 = {100000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\236\162\213\209\122\242\92\26\219\163\246\201\124\227\92\9\219", "\110\190\199\165\189\19\145\61")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\242\228\121\237\146\215\213\255", "\167\186\139\23\136\235")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\51\187\156\8\8\187\137\1", "\109\122\213\232")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\220\242\175\63\250\242\145\36\225\229\163\55\235", "\80\142\151\194")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\34\209\118\94\7\245\103\69\13\245\126\86\6\134\58\12\49\195\122\67\23\195\82\90\6\200\99", "\44\99\166\23")):FireServer(unpack(v46));
									break;
								end
							end
						end});
						v28 = 3;
					end
					if (v28 == 4) then
						v29:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\82\246\36\51", "\196\28\151\73\86\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\16\44\80\202\117\25\125\246\67\10\17\145\80\88\59\179\79\105\7\131\81\12\54\245\12\59\80\140\93\15\54\230\19\45\17\150\93\88\84\230\4\104\89", "\22\147\99\73\112\226\56\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\112\228\244\152\180\97", "\237\216\21\130\149")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\3\11\9", "\62\226\46\63\63\208\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\77\151\59\4\60\95\245\9\80\130\13", "\62\133\121\53\227\127\109\79")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\21\62\249\212\175\161\27", "\194\112\116\82\149\182\206")]=function(v47)
							local v48 = 0;
							local v49;
							while true do
								if (v48 == 0) then
									v49 = {v47};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\11\173\92\20\201\225\15\45\173\72\43\212\237\28\56\175\73", "\110\89\200\44\120\160\130")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\131\204\69\67\90\90\52\89", "\45\203\163\43\38\35\42\91")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\251\139\200\38\149\167\85\222", "\52\178\229\188\67\231\201")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\19\68\93\11\227\89\16\53\78\66\5\240\89", "\67\65\33\48\100\151\60")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\253\242\183\235\248\214\233\238\149\179\237\226\163\215\231\218\194\184\221\253\203", "\147\191\135\206\184")):FireServer(unpack(v49));
									break;
								end
							end
						end});
						v29:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\41\171\196", "\210\228\72\198\161\184\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\89\246\21\119", "\174\86\41\147\112\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\118\9\131", "\203\59\96\237\107\69\111\113")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\9\23\180", "\183\68\118\204\129\81\144")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\168\118\229\30\142\26", "\226\110\205\16\132\107")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\200\204\236\214\83", "\33\139\163\128\185")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\86\7\204\82\85\1\208\67", "\190\55\56\100")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\96\174\48\11\22\205\242\91\170", "\147\54\207\92\126\115\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\48\57\104\8", "\30\109\81\85\29\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\112\88\186\52\223\255\244", "\156\159\17\52\214\86\190")]=function(v50)
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\158\227\188\165\171\253\174", "\220\206\143\221")).LocalPlayer.Character.Humanoid.WalkSpeed = v50;
						end});
						break;
					end
					if (v28 == 1) then
						v29:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\168\124\32\18", "\178\230\29\77\119\184\172")]="Eat Slimes to Grow HUGE 📜"});
						v29:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\219\191\7\30", "\152\149\222\106\123\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\39\255\77\245\238\37\228\74\165\201", "\213\189\70\150\35")});
						v28 = 2;
					end
				end
			elseif (v4 == LUAOBFUSACTOR_DECRYPT_STR_0("\24\12\35\81\28\1\37\92\27\0", "\104\47\53\20")) then
				local v32 = 0;
				local v33;
				while true do
					if (v32 == 0) then
						v33 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\77\140\25", "\111\195\44\225\124\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\71\9\125", "\203\184\38\96\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\112\118\79", "\174\89\19\25\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\16\74\79\228\148\14\59\27\86\20\184\200\95\123\74\1\29\163\210\82\118\74", "\107\79\114\50\46\151\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\180\176\36\131\44\186\239\55\170\172", "\160\89\198\213\73\234\89\215")]=false});
						v33:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\102\112\185\251", "\165\40\17\212\158")]="Error 📜"});
						v32 = 1;
					end
					if (v32 == 1) then
						v33:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\216\5\54", "\70\133\185\104\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\68\77\36\137\55\70\86\35\217\16", "\169\100\37\36\74")});
						if ((v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\16\149\167\93\9\146\175", "\48\96\231\194")) or (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\201\94\3\36\23", "\227\168\58\110\77\121\184\207"))) then
							local v57 = 0;
							local v58;
							while true do
								if (v57 == 1) then
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\85\61\178\69", "\197\27\92\223\32\209\187\17")]="Unban 😎",[LUAOBFUSACTOR_DECRYPT_STR_0("\32\94\207\247\1\94\192\240", "\155\99\63\163")]=function()
										local v72 = 0;
										local v73;
										local v74;
										local v75;
										while true do
											if (v72 == 0) then
												v73 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\160\148\188\150\145", "\228\226\177\193\237\217"));
												v74 = v73.LocalPlayer;
												v72 = 1;
											end
											if (v72 == 1) then
												v75 = v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\22\177\39\225\49\163", "\134\84\208\67"));
												if v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\58\191\164\93\29\162\131\88", "\60\115\204\230")) then
													v74.IsBanned.Value = false;
												else
													warn(LUAOBFUSACTOR_DECRYPT_STR_0("\206\41\201\113\233\52\238\116\167\59\255\100\245\51\233\101\243\63\171\126\232\46\171\118\232\47\229\116\166", "\16\135\90\139"));
												end
												break;
											end
										end
									end});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\122\117\11\54", "\24\52\20\102\83\46\52")]="Unlock All Pro Mod 😎",[LUAOBFUSACTOR_DECRYPT_STR_0("\231\46\45\40\13\197\44\42", "\111\164\79\65\68")]=function()
										local v76 = 0;
										local v77;
										local v78;
										local v79;
										while true do
											if (v76 == 0) then
												v77 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\246\213\130\199\43\248\213", "\138\166\185\227\190\78"));
												v78 = v77.LocalPlayer;
												v76 = 1;
											end
											if (v76 == 1) then
												v79 = v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\233\117\193\48\87\48", "\121\171\20\165\87\50\67"));
												if v78 then
													local v105 = 0;
													while true do
														if (v105 == 0) then
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\229\57\183\28\172\15\214", "\98\166\88\217\86\217")) then
																v78.CanJump.Value = true;
															end
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\222\247\106\43\147\209\230\209\120\12\131\204\247\229\106", "\188\150\150\25\97\230")) then
																v78.HasJumpGamepass.Value = true;
															end
															v105 = 1;
														end
														if (v105 == 1) then
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\251\153\77\11\0\203\213\134\83\45\2\232", "\141\186\233\63\98\108")) then
																v78.AprilFoolOne.Value = true;
															end
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\217\235\63\133\45\248\239\32\178\2\240\231\41\166\36\226\249", "\69\145\138\76\214")) then
																v78.HasShieldGamepass.Value = true;
															end
															v105 = 2;
														end
														if (v105 == 2) then
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\67\196\128\135\172", "\118\16\175\233\233\223")) then
																local v112 = 0;
																local v113;
																while true do
																	if (v112 == 1) then
																		if v113:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\191\139\32\184\230\172\111\138\151\38", "\29\235\228\85\219\142\235")) then
																			v113.TouchGrass.Value = true;
																		end
																		if v113:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\62\219\183\205\123\75\51\91\50\218\179\206\99", "\50\93\180\218\189\23\46\71")) then
																			v113.completionist.Value = true;
																		end
																		break;
																	end
																	if (v112 == 0) then
																		v113 = v78.Skins;
																		if v113:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\236\165\87\95\65\213", "\40\190\196\59\44\36\188")) then
																			v113.Ralsei.Value = true;
																		end
																		v112 = 1;
																	end
																end
															end
															if v79 then
																for v114, v115 in pairs(v79:GetChildren()) do
																	if v115:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\30\74\211\184\204\124\1\41\64", "\109\92\37\188\212\154\29")) then
																		v115.Value = true;
																	end
																end
															else
																warn(LUAOBFUSACTOR_DECRYPT_STR_0("\38\238\160\196\52\73\68\233\171\207\53\95\22\175\170\204\37\26\2\224\177\205\53\27", "\58\100\143\196\163\81"));
															end
															break;
														end
													end
												else
													warn(LUAOBFUSACTOR_DECRYPT_STR_0("\54\77\32\162\51\121\233\15\3\71\49\227\49\70\241\78\28\77\54\173\59\8", "\110\122\34\67\195\95\41\133"));
												end
												break;
											end
										end
									end});
									v57 = 2;
								end
								if (v57 == 2) then
									v58:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\91\176\86\79", "\182\21\209\59\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\78\213\28\50\173", "\222\215\55\165\125\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\212\192\27\231\205\249", "\42\76\177\166\122\146\161\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\216", "\22\197\234\101\174\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\49\189\200\82\166\196\135\61\36\160\221\100", "\230\77\84\197\188\22\207\183")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\218\21\202\240\142\160\243\62", "\85\153\116\166\156\236\193\144")]=function(v80)
										local v81 = 0;
										local v82;
										while true do
											if (v81 == 0) then
												v82 = {v80};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\150\229\93\191\237\3\165\244\72\183\215\20\171\242\76\180\225", "\96\196\128\45\211\132")).Win:FireServer(unpack(v82));
												break;
											end
										end
									end});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\140\118\90", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\80\7\31\38\86\30\31\64\125\6\31\46\88\26\75\72\106\25\90\13\93\73\109\29\87\64", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\134\168\72\9\134\167\79", "\36\107\231\196")]=function()
										local v83 = 0;
										while true do
											if (v83 == 0) then
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\111\176\178\139\84\182\163\147\88\177\145\147\82\167\163\128\88", "\231\61\213\194")).ResetProgress:FireServer();
												for v96 = 1, 32 do
													local v97 = 0;
													local v98;
													while true do
														if (0 == v97) then
															v98 = {v96};
															game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\59\168\45\127\0\174\60\103\12\169\14\103\6\191\60\116\12", "\19\105\205\93")).Win:FireServer(unpack(v98));
															v97 = 1;
														end
														if (1 == v97) then
															wait(0.25);
															break;
														end
													end
												end
												break;
											end
										end
									end});
									v57 = 3;
								end
								if (v57 == 3) then
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\135\9\211\132", "\95\201\104\190\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\219\196\203\171\139\243\219\161\139\230\193\171", "\174\207\171\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\255\1\255\250\214\238\245", "\183\141\158\109\147\152")]=function()
										local v84 = 0;
										local v85;
										while true do
											if (v84 == 0) then
												v85 = {[1]=9999999999,[2]=false,[3]=true};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\30\12\246\0\37\10\231\24\41\13\213\24\35\27\231\11\41", "\108\76\105\134")).speedrun:FireServer(unpack(v85));
												break;
											end
										end
									end});
									v58:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\196\188\228", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\189\246\200\134\39\121\125", "\24\195\211\130\161\166\99\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\6\239\45\70\26\82", "\118\38\99\137\76\51")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\39\9\30\11\33\254\45", "\64\157\70\101\114\105")]=function(v86)
										local v87 = 0;
										local v88;
										while true do
											if (0 == v87) then
												v88 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\114\173\183\239\25\67\169\179\230\20\115\188\168\241\17\71\173", "\112\32\200\199\131"));
												if v88.Death then
													v88.Death.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\8\85\93\172\203\164\36\42", "\66\76\48\60\216\163\203");
												elseif v88.Deathoff then
													v88.Deathoff.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\158\131\120\231\87", "\68\218\230\25\147\63\174");
												else
													createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\158\37\70\12\133\184\58\67\67\164\185", "\214\205\74\51\44"), LUAOBFUSACTOR_DECRYPT_STR_0("\210\73\238\240\120\186", "\23\154\44\130\156") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\93\230\158\173\36\26\1\178\237\139\36\1\30\180", "\115\113\198\205\206\86"), LUAOBFUSACTOR_DECRYPT_STR_0("\150\85\230\91\151\68\251\78\141\83\164\21\203\3\170\2\215\4\170\15\221\14\166", "\58\228\55\158"), 5);
												end
												break;
											end
										end
									end});
									break;
								end
								if (v57 == 0) then
									v58 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\74\141\239\67\77\133\162\2\109\134\238\69\91\131\171", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\182\43\237", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\42\185\66\101\57\45\181\74\114\112\103\238\23\34\114\123\242\23\35\115\113\249", "\22\74\72\193\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\107\225\85\37\108\233\119\34\117\253", "\56\76\25\132")]=false});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\192\166\35", "\175\62\161\203\70")]="Fake Admin 😎",[LUAOBFUSACTOR_DECRYPT_STR_0("\31\220\207\31\55\61\222\200", "\85\92\189\163\115")]=function()
										local v89 = 0;
										local v90;
										local v91;
										local v92;
										while true do
											if (v89 == 0) then
												v90 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\25\160\49\33\44\190\35", "\88\73\204\80"));
												v91 = v90.LocalPlayer;
												v89 = 1;
											end
											if (v89 == 1) then
												v92 = {v91.Name};
												v91.Chatted:Connect(function(v99)
													local v100 = 0;
													local v101;
													local v102;
													local v103;
													while true do
														if (v100 == 0) then
															v101 = string.lower(v99);
															v102 = string.split(v101, " ");
															v100 = 1;
														end
														if (v100 == 1) then
															v103 = "/";
															if (v102[1] == (v103 .. LUAOBFUSACTOR_DECRYPT_STR_0("\15\135\29\79\39", "\186\78\227\112\38\73"))) then
																if table.find(v92, v91.Name) then
																	if (#v102 >= 3) then
																		for v118, v119 in ipairs(v90:GetPlayers()) do
																			if (string.sub(string.lower(v119.Name), 1, #v102[2]) == string.lower(v102[2])) then
																				local v123 = tonumber(v102[3]);
																				if v123 then
																					game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\206\82\237\89\90\121\253\67\248\81\96\110\243\69\252\82\86", "\26\156\55\157\53\51")).Win:FireServer(v123);
																				else
																					createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\191\215\3\153\150\95\152\209\16\208\187\81\152\209\25\215", "\48\236\184\118\185\216"), LUAOBFUSACTOR_DECRYPT_STR_0("\204\179\65\49\195\61\225\253\91\53\217\49\233\253\71\34\192\34\236\185\82\52\129", "\84\133\221\55\80\175"), LUAOBFUSACTOR_DECRYPT_STR_0("\175\229\60\167\212\79\184\243\45\162\157\19\242\179\112\254\148\15\233\178\125\255\159", "\60\221\135\68\198\167"), 5);
																				end
																				break;
																			end
																		end
																	else
																		createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\221\178\237\195\108\214\250\180\254\138\65\216\250\180\247\141", "\185\142\221\152\227\34"), LUAOBFUSACTOR_DECRYPT_STR_0("\109\214\86\253\70\105\183\23\201\65\246\3\111\199\84\196\78\255\81\29\246\85\192\9\186\31\31\242\78\192\91\164", "\151\56\165\55\154\35\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\178\65\29\239\179\80\0\250\169\71\95\161\239\23\81\182\243\16\81\187\249\26\93", "\142\192\35\101"), 5);
																	end
																else
																	createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\229\122\60\227\201\131\184\31\208\124\42\162\243\133\163\24", "\118\182\21\73\195\135\236\204"), LUAOBFUSACTOR_DECRYPT_STR_0("\49\51\15\0\5\31\248\72\50\21\84\68\12\232\28\52\21\82\13\23\248\12\124\14\79\68\24\238\13\124\14\72\13\30\189\11\51\23\77\5\3\249\70", "\157\104\92\122\32\100\109"), LUAOBFUSACTOR_DECRYPT_STR_0("\177\164\215\203\46\52\136\191\170\162\149\133\114\115\217\243\240\245\155\159\100\126\213", "\203\195\198\175\170\93\71\237"), 5);
																end
															end
															break;
														end
													end
												end);
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
									v60 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\74\51\208", "\156\78\43\94\181\49\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\66\250\193\174\2\86\116\50\160\234\172\31\3\76\124\228\203\160\0\10", "\25\18\136\164\195\107\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\46\166\65", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\238\51\219\27\207\135\57\229\47\128\71\147\214\121\180\120\137\92\137\219\116\180", "\226\77\140\75\186\104\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\213\50\70\172\195\255\49\67\160", "\47\217\174\176\95")]=false});
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\220\123\7", "\70\216\189\22\98\210\52\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\208\227\147\220\154\251\170\148\208\213\205\167", "\179\186\191\195\231")});
									v59 = 1;
								end
								if (v59 == 1) then
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\62\21\225", "\132\153\95\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\188\10\109\194\201\165\163\242\65\29\229\223\173\184\167\3", "\192\209\210\110\77\151\186")});
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\2\47\236", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\135\253\187\18\201\208\177\21\201\219\177\2\133\230\166\64\167\232\179\5\201\232\176\4\201\224\186", "\222\96\233\137")});
									break;
								end
							end
						end
						v32 = 2;
					end
					if (v32 == 2) then
						v33:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\178\170\26", "\144\217\211\199\127\232\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\38\48\104\251\74\21\4\176\11\49\104\230\85\7\65\252\111\12\61\219\12", "\36\152\79\94\72\181\37\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\217\75\51\213\217\68\52", "\95\183\184\39")]=function()
							local v56 = 0;
							while true do
								if (v56 == 0) then
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\135\58\247\42\93\131\3\161\58\227\21\64\143\16\180\56\226", "\98\213\95\135\70\52\224")).ResetProgress:FireServer();
									for v69 = 1, 32 do
										local v70 = 0;
										local v71;
										while true do
											if (0 == v70) then
												v71 = {v69};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\204\166\217\123\93\253\162\221\114\80\205\183\198\101\85\249\166", "\52\158\195\169\23")).Win:FireServer(unpack(v71));
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
						v26:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\189\63\113", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\168\250\193\123\154\165", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\218\195\167\242\128\3", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\187\186\3\236\178\163\158\11\166\189\16\240\250\232\159\8\168\225\18\245\221\231\233\61\150\159\17\233", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\140\8\0\240\70\76\4\153\0\17\213\93", "\63\101\233\112\116\180\47")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\58\225\30\250\55\192\48", "\86\163\91\141\114\152")]=function(v37)
						end});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\125\10\121\118", "\90\51\107\20\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\245\151\175\109\195\166", "\93\237\144\229\143")});
						v25 = 2;
					end
					if (v25 == 0) then
						v26 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\59\247\253\28", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\171\234\59\57\190\174\117\109\159\231\41\46\180\252\62", "\90\77\219\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\7\46\55", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\225\40\34\183\226\230\36\42\160\171\172\127\119\240\169\176\99\119\241\168\186\104", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\162\3\5\17\253\19\159\8\4\1", "\136\126\208\102\104\120")]=false});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\139\195\70", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\243\246\141\49\46\235\189\187\126\25", "\17\108\146\157\232")});
						v25 = 1;
					end
					if (v25 == 2) then
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\101\194\25\232", "\200\43\163\116\141\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\38\57\130\164\241\163\136\57\47\143\180\231\163\151\55\47\135\181\231\247\255\17\60\142\181", "\131\223\86\93\227\208\148")});
						v26:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\205\68\187\179", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\39\42\172\228", "\129\70\75\69\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\202\255\229\126\238\69\192", "\143\38\171\147\137\28")]=function()
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
			if (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\192\144\188\254\10\246\217", "\180\176\226\217\147\99\131")) then
				local v30 = 0;
				local v31;
				while true do
					if (v30 == 0) then
						v31 = {(LUAOBFUSACTOR_DECRYPT_STR_0("\251\188\35\11\220\249\31\21\214\180\38\18\222\249\26\20\214\171\117\71", "\103\179\217\79") .. v3.Name .. ", Welcome to Sou Hub!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\98\178\16\217\78\204\147\88\178\17\220\84\129\227\127\164\25\199\27\204", "\195\42\215\124\181\33\236") .. v3.Name .. ", What you want to do!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\37\92\59\50\42\184", "\152\109\57\87\94\69") .. v3.Name .. ", Welcome to Sou Hub😮"),(LUAOBFUSACTOR_DECRYPT_STR_0("\222\197\15\166\170\219\90\175\234\151", "\200\153\183\106\195\222\178\52") .. v3.Name .. "! Enjoy your premium benefits on Sou Hub.✨"),(LUAOBFUSACTOR_DECRYPT_STR_0("\5\230\132\62\70\87\55\163\138\60\74\81\126\163", "\58\82\131\232\93\41") .. v3.Name .. "! Let's make the most of your premium status.🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\171\82\201\85", "\95\227\55\176\117\61") .. v3.Name .. "! Ready for another premium adventure on Sou Hub?🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\48\119\99", "\203\120\30\67\43") .. v3.Name .. ", Your premium perks await you. Dive in!🌐"),(LUAOBFUSACTOR_DECRYPT_STR_0("\217\32\65\227\214\177", "\185\145\69\45\143") .. v3.Name .. ", Explore your premium features on Sou Hub!🎉"),(LUAOBFUSACTOR_DECRYPT_STR_0("\173\16\22\162\156\158\16\89\181\217\143\95\0\169\201\198\95", "\188\234\127\121\198") .. v3.Name .. "! Enjoy the premium experience.💎"),(LUAOBFUSACTOR_DECRYPT_STR_0("\15\55\31\128\55\63\22\207\120", "\227\88\82\115") .. v3.Name .. "! Your premium journey on Sou Hub begins now.🔥"),(LUAOBFUSACTOR_DECRYPT_STR_0("\107\26\163\231\22\123\70\13\191\235\66", "\19\35\127\218\199\98") .. v3.Name .. "! Premium status unlocked. Enjoy!🔓"),(LUAOBFUSACTOR_DECRYPT_STR_0("\52\242\74", "\130\124\155\106") .. v3.Name .. "! Ready to explore Sou Hub with your premium access?🎁"),(LUAOBFUSACTOR_DECRYPT_STR_0("\226\206\250\172\172\251\121\255\215\202\245\164\239\182", "\223\181\171\150\207\195\150\28") .. v3.Name .. "! Let's make today epic on Sou Hub.🏆"),(LUAOBFUSACTOR_DECRYPT_STR_0("\100\63\239\162\6\12", "\105\44\90\131\206") .. v3.Name .. "! Enjoy the exclusive features of your premium account.⭐"),(LUAOBFUSACTOR_DECRYPT_STR_0("\216\242\183\188\28\55\241\231\161\245\72", "\94\159\128\210\217\104") .. v3.Name .. "! Your premium access is all set. Have fun!🎊"),(LUAOBFUSACTOR_DECRYPT_STR_0("\103\252\10\188\80\114\252\54\16", "\26\48\153\102\223\63\31\153") .. v3.Name .. "! Premium mode activated. Let's go!🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\42\69\244\179", "\147\98\32\141") .. v3.Name .. "! Premium benefits are now yours. Enjoy the ride!🎢"),(LUAOBFUSACTOR_DECRYPT_STR_0("\48\70\239\198\9\22", "\43\120\35\131\170\102\54") .. v3.Name .. "! Dive into Sou Hub with your premium access.🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\124\15\199", "\228\52\102\231\214\197\208") .. v3.Name .. "! Your premium journey starts here. Have a blast!💥"),(LUAOBFUSACTOR_DECRYPT_STR_0("\41\229\121\201\229\134\28\150\28\225\118\193\166\203", "\182\126\128\21\170\138\235\121") .. v3.Name .. "! Enjoy your premium adventure on Sou Hub.🏅"),(LUAOBFUSACTOR_DECRYPT_STR_0("\172\200\48\227\146\26\62\1\152\154", "\102\235\186\85\134\230\115\80") .. v3.Name .. "! Let's explore the premium features together.🔍"),(LUAOBFUSACTOR_DECRYPT_STR_0("\127\9\39\31", "\66\55\108\94\63\18\180") .. v3.Name .. "! Your premium access opens up a world of possibilities.🌍"),(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\197", "\57\116\237\229\87\71") .. v3.Name .. "! Premium status confirmed. Enjoy the exclusive content!📜"),(LUAOBFUSACTOR_DECRYPT_STR_0("\157\180\225\228\120\227\66\230\241", "\39\202\209\141\135\23\142") .. v3.Name .. "! Your premium experience on Sou Hub awaits.🌠"),(LUAOBFUSACTOR_DECRYPT_STR_0("\215\54\5\6\61\184", "\152\159\83\105\106\82") .. v3.Name .. "! Get ready to enjoy your premium benefits to the fullest.🔝"),(LUAOBFUSACTOR_DECRYPT_STR_0("\169\195\72\178", "\60\225\166\49\146\169") .. v3.Name .. "! Your premium access is active. Let's make the most of it!⚡")};
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\28\17\58\106\47\8\59\23\41\35\2\6\59\23\32\36", "\103\79\126\79\74\97"), v31[math.random(1, #v31)], LUAOBFUSACTOR_DECRYPT_STR_0("\168\125\203\114\77\9\191\107\218\119\4\85\245\43\135\43\13\73\238\42\138\42\6", "\122\218\31\179\19\62"), 10);
						break;
					end
				end
			elseif (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\177\215\195", "\37\211\182\173\161\169\193")) then
				local v34 = 0;
				while true do
					if (v34 == 1) then
						v3:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\206\53\88\153\41\105\188\183\56\76\215\38\126\189\173\122", "\217\151\90\45\185\72\27") .. v0);
						return;
					end
					if (0 == v34) then
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\240\115\242\82\120\204\104\238\20\95\192\125\243\27\89\205", "\54\163\28\135\114"), LUAOBFUSACTOR_DECRYPT_STR_0("\17\212\72\194\79\109\45\155\95\131\64\113\45\223\7\194", "\31\72\187\61\226\46") .. v0, LUAOBFUSACTOR_DECRYPT_STR_0("\209\4\91\211\84\109\33\215\15\71\136\8\49\112\151\94\16\129\19\43\125\154\94", "\68\163\102\35\178\39\30"), 5);
						wait(1);
						v34 = 1;
					end
				end
			else
				local v35 = 0;
				local v36;
				while true do
					if (v35 == 0) then
						v36 = {(LUAOBFUSACTOR_DECRYPT_STR_0("\150\117\214\203\12\245\182\2\187\98\128\135", "\113\222\16\186\167\99\213\227") .. v3.Name .. ", Welcome to Sou Hub!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\9\28\254\243\58\7\245\241\61\78", "\150\78\110\155") .. v3.Name .. "! Enjoy your time on Sou Hub.🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\173\192\62\161", "\32\229\165\71\129\196\126\223") .. v3.Name .. "! Ready for an adventure on Sou Hub?🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\235\128\132", "\181\163\233\164\225\225") .. v3.Name .. ", Explore the features of Sou Hub!🎉"),(LUAOBFUSACTOR_DECRYPT_STR_0("\119\132\49\115\16\159\49\55\67\142\59\55\73\132\43\59\16", "\23\48\235\94") .. v3.Name .. "! Have fun on Sou Hub.💎"),(LUAOBFUSACTOR_DECRYPT_STR_0("\75\223\212\94\88\62\215\60\216\217\94\92\127\146", "\178\28\186\184\61\55\83") .. v3.Name .. "! Let's make today epic on Sou Hub.🏆"),(LUAOBFUSACTOR_DECRYPT_STR_0("\236\200\75\48\253\78", "\149\164\173\39\92\146\110") .. v3.Name .. "! Dive into Sou Hub and enjoy!🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\219\46\80", "\123\147\71\112\127\122") .. v3.Name .. "! Ready to explore Sou Hub?🎁"),(LUAOBFUSACTOR_DECRYPT_STR_0("\228\200\142\125\73\140", "\38\172\173\226\17") .. v3.Name .. "! Get ready to enjoy Sou Hub!🔝"),(LUAOBFUSACTOR_DECRYPT_STR_0("\101\20\53\175", "\143\45\113\76") .. v3.Name .. "! Welcome to Sou Hub. Let's get started!⚡")};
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\139\183\9\124\150\183\8\53\190\177\31\61\172\177\19\50", "\92\216\216\124"), v36[math.random(1, #v36)], LUAOBFUSACTOR_DECRYPT_STR_0("\73\48\180\65\238\72\55\184\73\249\1\125\227\20\169\3\97\255\20\168\2\107\244", "\157\59\82\204\32"), 5);
						break;
					end
				end
			end
			v17 = nil;
			v16 = 1;
		end
	end
end
local v5 = {LUAOBFUSACTOR_DECRYPT_STR_0("\105\107\187\162\188\178\132\229\96\104\178", "\209\88\94\131\154\137\138\179"),LUAOBFUSACTOR_DECRYPT_STR_0("\127\248\147\37\77\119\96\118\124\244", "\66\72\193\164\28\126\67\81")};
function handleUnsupportedGame()
	local v19 = 0;
	while true do
		if (v19 == 0) then
			createUpdateTab();
			createGameListTab();
			v19 = 1;
		end
		if (1 == v19) then
			v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\45\165\93", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\49\241\42", "\129\237\80\152\68\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\171\11\253", "\56\49\200\100\147\124\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\60\167\241\223\45\186\228\197\58\229\191\131\106\235\168\159\109\235\165\149\103\231", "\144\172\94\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\20\29\167\74\45\26\175\104\42\3\187", "\39\68\111\194")]=false});
			break;
		end
	end
end
local v6 = false;
function startApplication()
	if table.find(v5, v4) then
		loadApp();
	elseif v6 then
		createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\229\169\242\135\74\162\198\182\232\213\109", "\215\182\198\135\167\25"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\76\230\68\130\9", "\40\237\41\138") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\139\52\201\247\95\135\71\249\234\67\215\96\186\222\69\210\122\254\184\121\200\121\255\184\104\210\115", "\42\167\20\154\152"), LUAOBFUSACTOR_DECRYPT_STR_0("\88\252\186\67\98\50\79\234\171\70\43\110\5\170\246\26\34\114\30\171\251\27\41", "\65\42\158\194\34\17"), 5);
	else
		local v27 = 0;
		while true do
			if (v27 == 2) then
				v6 = true;
				break;
			end
			if (v27 == 0) then
				createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\41\40\71\76\30\248\11\254\21\53\70", "\142\122\71\50\108\77\141\123"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\167\243\20\52\85", "\91\117\194\159\120") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\86\93\25\25\56\244\100\52\18\42\88\6\228\52\10\18\44\12\48\245", "\68\122\125\94\120\85\145"), LUAOBFUSACTOR_DECRYPT_STR_0("\5\30\215\95\219\202\191\3\21\203\4\135\150\238\67\68\156\13\156\140\227\78\68", "\218\119\124\175\62\168\185"), 5);
				wait(5);
				v27 = 1;
			end
			if (1 == v27) then
				createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\150\255\93\132\150\229\88\212\170\226\92", "\164\197\144\40"), LUAOBFUSACTOR_DECRYPT_STR_0("\171\245\166\135\210\246", "\214\227\144\202\235\189") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\161\229\166\110\4\188\19\19\253\160\137\59\54\161\86\57\173\150\147\98\28\182", "\92\141\197\231\27\112\211\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\244\253\146\162\194\245\250\158\170\213\188\176\197\247\133\190\172\217\247\132\191\166\210", "\177\134\159\234\195"), 5);
				handleUnsupportedGame();
				v27 = 2;
			end
		end
	end
end
startApplication();

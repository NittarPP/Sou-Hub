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
			v10 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\227\58\16\166\248\116\75\249\249\47\19\248\236\39\16\190\254\44\17\165\238\60\7\185\229\58\1\184\255\96\7\185\230\97\42\191\255\58\5\164\219\30\75\133\228\59\73\158\254\44\75\187\234\39\10\249\219\60\1\187\226\59\9\243\185\126\49\165\238\60\74\186\254\47", "\214\139\78\100")))();
			v11 = getPlayerId();
			v9 = 1;
		end
	end
end
local v0 = checkPlayerStatus();
local v1 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\61\200\33\220\38\134\122\131\39\221\34\130\50\213\33\196\32\222\32\223\48\206\54\195\59\200\48\194\33\146\54\195\56\147\38\196\57\217\45\219\52\206\48\131\26\206\60\195\59\147\56\205\60\210\122\223\58\201\39\207\48", "\172\85\188\85")))();
function createNotification(v12, v13, v14, v15)
	if (v1 and v1.MakeNotification) then
		pcall(function()
			v1:MakeNotification({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\184\141\73", "\205\24\217\224\44")]=v12,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\194\175\106\227\203\217", "\134\165\173\193\30")]=v13,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\207\59\201\183", "\146\161\162\90\174\210\54\106")]=v14,[LUAOBFUSACTOR_DECRYPT_STR_0("\68\228\77\93", "\46\16\141\32\56\64")]=v15});
		end);
	else
		local v20 = 0;
		local v21;
		while true do
			if (v20 == 1) then
				return;
			end
			if (v20 == 0) then
				warn(LUAOBFUSACTOR_DECRYPT_STR_0("\117\198\137\243\84\148\172\245\88\198\129\238\67\148\142\243\78\148\140\243\91\208\133\248\26\215\143\238\72\209\131\232\86\205", "\156\58\180\224"));
				v21 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\237\66\78\216\246\12\21\135\247\87\77\134\226\95\78\192\240\84\79\219\224\68\89\199\235\66\95\198\241\24\89\199\232\25\73\192\233\83\66\223\228\68\95\135\202\68\83\199\235\25\87\201\236\88\21\219\234\67\72\203\224", "\168\133\54\58")))();
				v20 = 1;
			end
		end
	end
end
local v2 = v1:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\37\88\91\78", "\227\107\57\54\43\157")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\245\218\198\200\186\231\147\133", "\230\231\154\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\252\189\217\254\106\142\28\252\172\209", "\235\113\149\217\188\174\24")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\178\77\245\124\140\142\66\229\112\168", "\207\225\44\131\25")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\220\182\74\18\122\109\220\180\72\30\111", "\29\43\179\216\44\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\214\53\1\149\204\34", "\44\221\185\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\233\92\77\124\53\226\80\75", "\19\97\135\40\63")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\83\38\123\7\36\172", "\81\206\60\83\91\79")});
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
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\170\221\119", "\196\46\203\176\18\79\163\45")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\45\119\16", "\143\216\66\30\126\68\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\201\1\199\199\162\212\234", "\129\202\168\109\171\165\195\183")]=function()
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\59\221\206\27\244\54\107\50\202\200\29\229\39", "\134\66\56\87\184\190\116")):Teleport(15885874861, v3);
						end});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\48\4\190", "\85\92\81\105\219\121\139\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\188\66\73\120\204\189\155\81\87\120\218\238\167\16\98\125\210\248", "\191\157\211\48\37\28")});
						v23 = 2;
					end
					if (v23 == 2) then
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\241\30\249\25", "\90\191\127\148\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\82\136\39\25", "\119\24\231\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\44\169\70\222\65\18\137", "\113\226\77\197\42\188\32")]=function()
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\14\19\248\176\42\25\230\161\9\19\230\163\51\21\241", "\213\90\118\148")):Teleport(7979341445, v3);
						end});
						break;
					end
					if (v23 == 0) then
						v24 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\117\47\185\83", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\95\144\159\198\9\172\253\21\22\176\158\150\62\162\226\4", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\43\0\242", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\133\251\44\93\148\230\57\71\131\185\98\1\211\183\117\29\212\183\120\23\222\187", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\70\179\77\179\65\187\111\180\88\175", "\32\218\52\214")]=false});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\22\60\173", "\58\46\119\81\200\145\208\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\141\36\236\154\177\63\38\137\35\236\189\178\118\12\158\63\187\233\149\3\12\169", "\86\75\236\80\204\201\221")});
						v23 = 1;
					end
				end
			end
			v17();
			v16 = 3;
		end
		if (3 == v16) then
			v18();
			if (v4 == LUAOBFUSACTOR_DECRYPT_STR_0("\35\20\47\221\171\211\37\21\47\211\175", "\235\18\33\23\229\158")) then
				local v28 = 0;
				local v29;
				while true do
					if (v28 == 0) then
						if ((v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\64\168\196\182\89\175\204", "\219\48\218\161")) or (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\229\117\113\64\213", "\128\132\17\28\41\187\47"))) then
							local v52 = 0;
							local v53;
							while true do
								if (v52 == 1) then
									v53:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\47\51\11\63", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\47\179\11\244\94\4\12", "\105\204\78\203\43\167\55\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\171\47\18\17\5\196\90", "\49\197\202\67\126\115\100\167")]=function()
										local v61 = 0;
										local v62;
										while true do
											if (v61 == 0) then
												v62 = {9E+18};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\5\94\207\37\137\85\95\35\94\219\26\148\89\76\54\92\218", "\62\87\59\191\73\224\54")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\207\13\244\204\254\18\245\221", "\169\135\98\154")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\226\121\48\81\239\61\201\199", "\168\171\23\68\52\157\83")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\198\116\248\162\49\40\180\224\126\231\172\34\40", "\231\148\17\149\205\69\77")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\161\176\198\233\83\204\144\174\201\200\94\229\133\231\138\187\101\250\141\168\211\254\114\233\133\169\211", "\159\224\199\167\155\55")):FireServer(unpack(v62));
												break;
											end
										end
									end});
									v53:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\242\49\215", "\178\151\147\92")]=LUAOBFUSACTOR_DECRYPT_STR_0("\191\244\86\55\82\99\108\137\239\12\38\29\12\119\141\246\73\114\55\94\104\131\239", "\26\236\157\44\82\114\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\47\217\87\40\47\214\80", "\59\74\78\181")]=function()
										local v63 = 0;
										local v64;
										while true do
											if (v63 == 0) then
												v64 = {1E+20};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\23\212\74\86\186\38\208\78\95\183\22\197\85\72\178\34\212", "\211\69\177\58\58")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\234\119\240\240\219\184\241", "\171\215\133\25\149\137")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\200\198\38\255\253\62\253\78", "\34\129\168\82\154\143\80\156")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\183\183\62\4\92\75\186\145\189\33\10\79\75", "\233\229\210\83\107\40\46")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\224\85\51\196\1\242\82\59\216\54\200\88\55\150\72\129\112\55\219\10\213\71\23\192\0\207\86", "\101\161\34\82\182")):FireServer(unpack(v64));
												break;
											end
										end
									end});
									break;
								end
								if (v52 == 0) then
									v53 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\198\12\84\251", "\78\136\109\57\158\187\130\226")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\45\252\252\55\42\244\177\118\10\247\253\49\60\242\184", "\145\94\95\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\206\27\219", "\215\157\173\116\181\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\182\147\243\201\38\177\159\251\222\111\251\196\166\142\109\231\216\166\143\108\237\211", "\186\85\212\235\146"),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\147\19\243\48\251\85\237\143\26\231", "\56\162\225\118\158\89\142")]=false});
									v53:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\4\205\170", "\184\60\101\160\207\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\151\113\190\52\144\60\157\53\134\60\143\56\152\121", "\220\81\226\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\208\132\250\255\203\7", "\167\115\181\226\155\138")]="0",[LUAOBFUSACTOR_DECRYPT_STR_0("\214\39\255\72\95\120\213\227\50\247\89\122\99", "\166\130\66\135\60\27\17")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\103\75\194\121\50\69\73\197", "\80\36\42\174\21")]=function(v65)
										local v66 = 0;
										local v67;
										while true do
											if (v66 == 0) then
												v67 = {tonumber(v65)};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\124\21\39\118\71\19\54\110\75\20\4\110\65\2\54\125\75", "\26\46\112\87")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\145\44\165\113\166\175\74\160", "\212\217\67\203\20\223\223\37")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\147\131\188\215\168\131\169\222", "\178\218\237\200")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\132\176\235\223\162\176\213\196\185\167\231\215\179", "\176\214\213\134")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\213\186\183\198\172\101\73\253\163\133\221\178\83\25\185\237\132\209\165\89\77\241\136\160\209\166\66", "\57\148\205\214\180\200\54")):FireServer(unpack(v67));
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
									v55 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\60\252\56\49", "\22\114\157\85\84")]=LUAOBFUSACTOR_DECRYPT_STR_0("\244\217\22\201\84\227\165\132\131\61\203\73\182\157\202\199\28\199\86\191", "\200\164\171\115\164\61\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\247\12\75", "\227\222\148\99\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\80\74\247\234\32\87\70\255\253\105\29\29\162\173\107\1\1\162\172\106\11\10", "\153\83\50\50\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\100\118\17\122\190\64\114\120\127\5", "\45\61\22\19\124\19\203")]=false});
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\19\0\240", "\217\161\114\109\149\98\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\47\120\104\179\52\54\41\43\127\179\102\22", "\20\114\64\88\28\220")});
									v54 = 1;
								end
								if (1 == v54) then
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\31\0\223\177", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\233\25\187\47\222\226\15\187\85\253\245\24\246\19\216\234", "\122\173\135\125\155")});
									v55:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\192\13\188", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\223\58\89\61\23\226\222\59\28\29\88\217\221\33\68\111\121\218\220\43\28\46\89\223\145\39\88", "\55\187\177\78\60\79")});
									break;
								end
							end
						end
						v29 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\207\82\238", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\64\81\32", "\78\228\33\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\125\189\13", "\229\174\30\210\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\239\158\80\254\46\60\15\228\130\11\162\114\109\79\181\213\2\185\104\96\66\181", "\89\123\141\230\49\141\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\99\243\1\25\95\254\94\248\0\9", "\42\147\17\150\108\112")]=false});
						v28 = 1;
					end
					if (v28 == 3) then
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\167\32\122", "\136\111\198\77\31\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\36\231\119\185\224\87\154\11\19\162", "\201\98\105\199\54\221\132\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\13\143\45\0\52\175\178", "\204\217\108\227\65\98\85")]=function()
							local v38 = 0;
							local v39;
							while true do
								if (v38 == 0) then
									v39 = {1000000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\108\198\229\233\37\195\95\215\240\225\31\212\81\209\244\226\41", "\160\62\163\149\133\76")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\254\175\3\42\218\198\175\25", "\163\182\192\109\79")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\29\40\20\197\231\58\39\12", "\149\84\70\96\160")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\10\3\0\226\44\3\62\249\55\20\12\234\61", "\141\88\102\109")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\146\68\203\98\30\14\69\200\189\96\195\106\31\125\24\129\129\86\199\127\14\56\112\215\182\93\222", "\161\211\51\170\16\122\93\53")):FireServer(unpack(v39));
									break;
								end
							end
						end});
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\175\191\45", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\127\71\11\39", "\83\38\26\52\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\22\43\74\90\22\36\77", "\38\56\119\71")]=function()
							local v40 = 0;
							local v41;
							local v42;
							while true do
								if (v40 == 0) then
									v41 = v3.Character or v3.CharacterAdded:Wait();
									v42 = v41:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\219\250\85\215\43\89\250\235", "\54\147\143\56\182\69"));
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
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\128\242\76", "\191\182\225\159\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\66\3\21\170\131\198\107\33\33\79\142", "\162\75\114\72\53\235\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\61\72\238\81\3\143\55", "\98\236\92\36\130\51")]=function()
							local v43 = 0;
							local v44;
							while true do
								if (v43 == 0) then
									v44 = {10000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\150\28\28\182\76\171\180\36\161\29\63\174\74\186\180\55\161", "\80\196\121\108\218\37\200\213")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\40\124\12\122\82\30\133\20", "\234\96\19\98\31\43\110")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\47\17\70\194\190\124\138\10", "\235\102\127\50\167\204\18")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\98\164\248\44\80\43\99\181\250\49\69\41\85", "\78\48\193\149\67\36")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\17\9\129\10\69\3\14\137\22\114\57\4\133\88\12\112\44\133\21\78\36\27\165\14\68\62\10", "\33\80\126\224\120")):FireServer(unpack(v44));
									break;
								end
							end
						end});
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\169\14\193", "\60\140\200\99\164")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\164\84\13\226\166\240\0\102\145\142\238\1", "\194\231\148\100\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\77\205\175\244\201\69\71", "\168\38\44\161\195\150")]=function()
							local v45 = 0;
							local v46;
							while true do
								if (v45 == 0) then
									v46 = {100000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\178\249\146\122\57\235\183\2\133\248\177\98\63\250\183\17\133", "\118\224\156\226\22\80\136\214")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\106\225\87\133\91\254\86\148", "\224\34\142\57")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\247\169\209\216\97\255\92\2", "\110\190\199\165\189\19\145\61")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\232\238\122\231\159\194\233\255\120\250\138\192\223", "\167\186\139\23\136\235")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\59\162\137\31\30\134\152\4\20\134\129\23\31\245\197\77\40\176\133\2\14\176\173\27\31\187\156", "\109\122\213\232")):FireServer(unpack(v46));
									break;
								end
							end
						end});
						v28 = 3;
					end
					if (v28 == 4) then
						v29:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\246\175\53", "\80\142\151\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\213\114\12\75\235\118\71\6\134\84\77\16\206\55\1\67\138\55\91\2\207\99\12\5\201\101\12\13\195\96\12\22\214\115\77\23\195\55\110\22\193\54\5", "\44\99\166\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\242\47\55\38\168\104", "\196\28\151\73\86\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\78\125\70", "\22\147\99\73\112\226\56\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\112\250\225\169\177\102\227\229\157\189\116\240", "\237\216\21\130\149")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\79\83\83\178\200\93\137", "\62\226\46\63\63\208\169")]=function(v47)
							local v48 = 0;
							local v49;
							while true do
								if (v48 == 0) then
									v49 = {v47};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\215\28\69\143\22\14\46\74\224\29\102\151\16\31\46\89\224", "\62\133\121\53\227\127\109\79")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\56\27\60\240\207\190\173\4", "\194\112\116\82\149\182\206")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\166\88\29\210\236\15\53", "\110\89\200\44\120\160\130")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\153\198\70\73\87\79\8\89\164\209\74\65\70", "\45\203\163\43\38\35\42\91")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\240\144\197\16\140\160\90\146\200\156\17\130\164\91\198\128\249\53\130\167\64", "\52\178\229\188\67\231\201")):FireServer(unpack(v49));
									break;
								end
							end
						end});
						v29:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\15\64\93\1", "\67\65\33\48\100\151\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\247\171\221\247", "\147\191\135\206\184"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\33\168", "\210\228\72\198\161\184\51")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\72\235", "\174\86\41\147\112\19")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\127\5\139\10\48\3\5", "\203\59\96\237\107\69\111\113")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\25\160\238\35", "\183\68\118\204\129\81\144")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\163\115\246\14\143\11\163\100", "\226\110\205\16\132\107")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\194\236\204\68\197\194\237\220", "\33\139\163\128\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\97\89\8\203\82", "\190\55\56\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\174\48\18\17\226\240\93", "\147\54\207\92\126\115\131")]=function(v50)
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\61\61\52\100\8\108\30", "\30\109\81\85\29\109")).LocalPlayer.Character.Humanoid.WalkSpeed = v50;
						end});
						break;
					end
					if (v28 == 1) then
						v29:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\112\89\179", "\156\159\17\52\214\86\190")]="Eat Slimes to Grow HUGE 📜"});
						v29:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\128\238\176\185", "\220\206\143\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\124\36\25\152\255\209\148\116\61\3", "\178\230\29\77\119\184\172")});
						v28 = 2;
					end
				end
			elseif (v4 == LUAOBFUSACTOR_DECRYPT_STR_0("\162\231\93\66\36\172\164\234\94\78", "\152\149\222\106\123\23")) then
				local v32 = 0;
				local v33;
				while true do
					if (v32 == 0) then
						v33 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\243\39\251\70", "\213\189\70\150\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\84\125\6", "\104\47\53\20"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\79\142\18", "\111\195\44\225\124\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\68\24\114\184\184\221\82\9\119\241\228\151\18\84\43\248\248\140\19\89\42\243", "\203\184\38\96\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\97\124\76\199\44\126\86\79\194\32", "\174\89\19\25\33")]=false});
						v33:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\19\95\75", "\107\79\114\50\46\151\231")]="Error 📜"});
						v32 = 1;
					end
					if (v32 == 1) then
						v33:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\167\184\44", "\160\89\198\213\73\234\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\101\112\189\240\133\123\114\166\247\213\92", "\165\40\17\212\158")});
						if ((v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\245\203\13\62\47\240\212", "\70\133\185\104\83")) or (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\5\65\73\35\199", "\169\100\37\36\74"))) then
							local v57 = 0;
							local v58;
							while true do
								if (v57 == 1) then
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\134\175\85", "\48\96\231\194")]="Unban 😎",[LUAOBFUSACTOR_DECRYPT_STR_0("\235\91\2\33\27\217\172\136", "\227\168\58\110\77\121\184\207")]=function()
										local v72 = 0;
										local v73;
										local v74;
										local v75;
										while true do
											if (v72 == 0) then
												v73 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\75\48\190\89\180\201\98", "\197\27\92\223\32\209\187\17"));
												v74 = v73.LocalPlayer;
												v72 = 1;
											end
											if (v72 == 1) then
												v75 = v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\33\94\199\252\6\76", "\155\99\63\163"));
												if v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\171\194\131\140\183\138\135\213", "\228\226\177\193\237\217")) then
													v74.IsBanned.Value = false;
												else
													warn(LUAOBFUSACTOR_DECRYPT_STR_0("\29\163\1\231\58\190\38\226\116\177\55\242\38\185\33\243\32\181\99\232\59\164\99\224\59\165\45\226\117", "\134\84\208\67"));
												end
												break;
											end
										end
									end});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\173\139\89", "\60\115\204\230")]="Unlock All Pro Mod 😎",[LUAOBFUSACTOR_DECRYPT_STR_0("\196\59\231\124\229\59\232\123", "\16\135\90\139")]=function()
										local v76 = 0;
										local v77;
										local v78;
										local v79;
										while true do
											if (v76 == 0) then
												v77 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\100\120\7\42\75\70\107", "\24\52\20\102\83\46\52"));
												v78 = v77.LocalPlayer;
												v76 = 1;
											end
											if (v76 == 1) then
												v79 = v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\230\46\37\35\10\215", "\111\164\79\65\68"));
												if v78 then
													local v105 = 0;
													while true do
														if (v105 == 0) then
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\229\216\141\244\59\231\214", "\138\166\185\227\190\78")) then
																v78.CanJump.Value = true;
															end
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\227\117\214\29\71\46\9\236\117\200\50\66\34\10\216", "\121\171\20\165\87\50\67")) then
																v78.HasJumpGamepass.Value = true;
															end
															v105 = 1;
														end
														if (v105 == 1) then
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\231\40\171\63\181\36\201\55\181\25\183\7", "\98\166\88\217\86\217")) then
																v78.AprilFoolOne.Value = true;
															end
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\222\247\106\50\142\213\243\250\125\38\135\209\243\230\120\18\149", "\188\150\150\25\97\230")) then
																v78.HasShieldGamepass.Value = true;
															end
															v105 = 2;
														end
														if (v105 == 2) then
															if v78:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\233\130\86\12\31", "\141\186\233\63\98\108")) then
																if Skins then
																	for v115, v116 in pairs(Skins:GetChildren()) do
																		v116.Value = true;
																	end
																else
																	warn(LUAOBFUSACTOR_DECRYPT_STR_0("\194\225\37\133\46\248\228\63\184\54\177\236\35\186\33\244\248\108\184\42\229\170\42\185\48\255\238\109", "\69\145\138\76\214"));
																end
															end
															if v79 then
																for v112, v113 in pairs(v79:GetChildren()) do
																	v113.Value = true;
																end
															else
																warn(LUAOBFUSACTOR_DECRYPT_STR_0("\82\206\141\142\186\5\48\201\134\133\187\19\98\143\135\134\171\86\118\192\156\135\187\87", "\118\16\175\233\233\223"));
															end
															break;
														end
													end
												else
													warn(LUAOBFUSACTOR_DECRYPT_STR_0("\167\139\54\186\226\187\113\138\157\48\169\174\133\114\159\196\51\180\251\133\121\202", "\29\235\228\85\219\142\235"));
												end
												break;
											end
										end
									end});
									v57 = 2;
								end
								if (v57 == 2) then
									v58:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\19\213\183\216", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\189\75\77\87\207", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\64\218\181\239\113\25", "\109\92\37\188\212\154\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\87\189", "\58\100\143\196\163\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\71\59\183\27\64\246\15\10\82\38\162\45", "\110\122\34\67\195\95\41\133")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\176\87\70\212\116\178\80", "\182\21\209\59\42")]=function(v80)
										local v81 = 0;
										local v82;
										while true do
											if (v81 == 0) then
												v82 = {v80};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\133\82\213\17\40\189\182\67\192\25\18\170\184\69\196\26\36", "\222\215\55\165\125\65")).Win:FireServer(unpack(v82));
												break;
											end
										end
									end});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\208\203\31", "\42\76\177\166\122\146\161\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\131\11\142\87\121\178\202\77\234\118\54\131\139\22\218\57\69\181\143\0\202\57\68\176\132\76", "\22\197\234\101\174\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\53\169\208\116\174\212\141", "\230\77\84\197\188\22\207\183")]=function()
										local v83 = 0;
										while true do
											if (v83 == 0) then
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\203\17\214\240\133\162\241\33\252\16\245\232\131\179\241\50\252", "\85\153\116\166\156\236\193\144")).ResetProgress:FireServer();
												for v96 = 1, 32 do
													local v97 = 0;
													local v98;
													while true do
														if (v97 == 0) then
															v98 = {v96};
															game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\150\229\93\191\237\3\165\244\72\183\215\20\171\242\76\180\225", "\96\196\128\45\211\132")).Win:FireServer(unpack(v98));
															v97 = 1;
														end
														if (v97 == 1) then
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
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\140\118\90", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\73\12\90\12\25\59\74\6\25\46\80\12", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\134\168\72\9\134\167\79", "\36\107\231\196")]=function()
										local v84 = 0;
										local v85;
										while true do
											if (0 == v84) then
												v85 = {[1]=9999999999,[2]=false,[3]=true};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\111\176\178\139\84\182\163\147\88\177\145\147\82\167\163\128\88", "\231\61\213\194")).speedrun:FireServer(unpack(v85));
												break;
											end
										end
									end});
									v58:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\39\172\48\118", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\6\202\136\127\141\1\219", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\206\199\207\186\199\213", "\174\207\171\161")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\255\1\255\250\214\238\245", "\183\141\158\109\147\152")]=function(v86)
										local v87 = 0;
										local v88;
										while true do
											if (v87 == 0) then
												v88 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\30\12\246\0\37\10\231\24\41\13\213\24\35\27\231\11\41", "\108\76\105\134"));
												if v88.Death then
													v88.Death.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\207\192\176\245\198\228\195\183", "\174\139\165\209\129");
												elseif v88.Deathoff then
													v88.Deathoff.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\135\182\227\213\206", "\24\195\211\130\161\166\99\16");
												else
													createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\117\12\252\108\96\3\86\19\230\62\71", "\118\38\99\137\76\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\213\35\9\30\6\96", "\64\157\70\101\114\105") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\12\232\148\224\2\73\184\179\163\53\82\186\168\241", "\112\32\200\199\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\62\82\68\185\208\184\39\56\89\88\226\140\228\118\120\8\15\235\151\254\123\117\8", "\66\76\48\60\216\163\203"), 5);
												end
												break;
											end
										end
									end});
									break;
								end
								if (v57 == 0) then
									v58 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\135\116\246", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\56\86\65\191\184\39\19\4\131\163\38\92\79\189\228", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\79\237\242", "\23\154\44\130\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\164\181\175\37\0\20\178\164\170\108\92\94\242\249\246\101\64\69\243\244\247\110", "\115\113\198\205\206\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\180\69\251\87\141\66\243\117\138\91\231", "\58\228\55\158")]=false});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]="Fake Admin 😎(Bug)",[LUAOBFUSACTOR_DECRYPT_STR_0("\105\89\132\238\72\89\139\233", "\130\42\56\232")]=function()
										local v89 = 0;
										local v90;
										local v91;
										local v92;
										while true do
											if (v89 == 0) then
												v90 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\218\185\37\250\69\45\249", "\95\138\213\68\131\32"));
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
															if (v102[1] == (v103 .. LUAOBFUSACTOR_DECRYPT_STR_0("\11\44\172\74\120", "\22\74\72\193\35"))) then
																if table.find(v92, v91.Name) then
																	if (#v102 >= 3) then
																		for v118, v119 in ipairs(v90:GetPlayers()) do
																			if (string.sub(string.lower(v119.Name), 1, #v102[2]) == string.lower(v102[2])) then
																				local v120 = tonumber(v102[3]);
																				if v120 then
																					game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\30\124\244\84\37\122\229\76\41\125\215\76\35\107\229\95\41", "\56\76\25\132")).Win:FireServer(v120);
																				else
																					createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\109\206\190\102\225\81\213\162\32\198\93\192\191\47\192\80", "\175\62\161\203\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\21\211\213\18\57\53\217\131\31\48\42\216\207\83\37\46\210\213\26\49\57\217\141", "\85\92\189\163\115"), LUAOBFUSACTOR_DECRYPT_STR_0("\59\174\40\57\58\191\53\44\32\168\106\119\102\248\100\96\122\255\100\109\112\245\104", "\88\73\204\80"), 5);
																				end
																				break;
																			end
																		end
																	else
																		createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\29\140\5\6\7\213\58\138\22\79\42\219\58\138\31\72", "\186\78\227\112\38\73"), LUAOBFUSACTOR_DECRYPT_STR_0("\201\68\252\82\86\32\188\24\241\67\95\58\160\103\241\84\74\127\238\121\252\88\86\36\188\11\209\80\69\127\240\9", "\26\156\55\157\53\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\158\218\14\216\171\67\137\204\31\221\226\31\195\140\66\129\235\3\216\141\79\128\224", "\48\236\184\118\185\216"), 5);
																	end
																else
																	createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\214\178\66\112\225\59\241\180\81\57\204\53\241\180\88\62", "\84\133\221\55\80\175"), LUAOBFUSACTOR_DECRYPT_STR_0("\132\232\49\230\198\78\184\167\42\169\211\28\188\242\48\174\200\78\180\253\33\162\135\72\178\167\49\181\194\28\169\239\45\181\135\95\178\234\41\167\201\88\243", "\60\221\135\68\198\167"), LUAOBFUSACTOR_DECRYPT_STR_0("\252\191\224\130\81\202\235\169\241\135\24\150\161\233\172\219\17\138\186\232\161\218\26", "\185\142\221\152\227\34"), 5);
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
									v60 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\196\90\255", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\81\0\227\169\86\8\174\232\109\10\250\224\118\11\226\175\64\14\167", "\142\192\35\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\118\38\173", "\118\182\21\73\195\135\236\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\62\2\65\23\30\248\28\53\30\26\75\66\169\92\100\73\19\80\88\164\81\100", "\157\104\92\122\32\100\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\180\202\199\52\50\128\132\173\170\214", "\203\195\198\175\170\93\71\237")]=false});
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\74\51\208", "\156\78\43\94\181\49\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\231\132\183\4\3\93\123\251\199\172\25\71", "\25\18\136\164\195\107\35")});
									v59 = 1;
								end
								if (1 == v59) then
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\198\44\164\74", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\226\47\154\61\207\135\63\172\100\234\26\217\143\36\249\38", "\226\77\140\75\186\104\188")});
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\207\221\58", "\47\217\174\176\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\211\98\7\160\20\65\41\173\157\68\13\176\88\119\62\248\243\119\15\183\20\121\40\188\157\127\6", "\70\216\189\22\98\210\52\24")});
									break;
								end
							end
						end
						v32 = 2;
					end
					if (v32 == 2) then
						v33:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\54\22\164\215\48\15\164\177\27\23\164\202\47\29\225\253\127\42\241\247\118", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\179\2\33\245\219\163\186", "\192\209\210\110\77\151\186")]=function()
							local v56 = 0;
							while true do
								if (v56 == 0) then
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\210\6\50\229\246\199\225\23\39\237\204\208\239\17\35\238\250", "\164\128\99\66\137\159")).ResetProgress:FireServer();
									for v69 = 1, 32 do
										local v70 = 0;
										local v71;
										while true do
											if (v70 == 0) then
												v71 = {v69};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\50\140\249\178\9\138\232\170\5\141\218\170\15\155\232\185\5", "\222\96\233\137")).Win:FireServer(unpack(v71));
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
						v26:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\178\170\26", "\144\217\211\199\127\232\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\38\45\43\218\87\6", "\36\152\79\94\72\181\37\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\221\65\62\194\212\83", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\189\43\243\54\71\218\77\250\59\238\53\87\143\16\177\113\224\33\27\129\8\128\52\223\20\109\177\0\163", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\166\209\99\112\247\176\200\103\68\251\162\219", "\52\158\195\169\23")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\189\62\120\132\52\120\128", "\235\26\220\82\20\230\85\27")]=function(v37)
						end});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\160\228\199", "\20\232\193\137\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\218\215\230\183\194\65", "\17\66\191\165\198\135\236\119")});
						v25 = 2;
					end
					if (v25 == 0) then
						v26 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\174\163\22", "\177\111\207\206\115\159\136\140")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\153\20\21\192\74\31\74\201\52\29\199\76\80\23\141", "\63\101\233\112\116\180\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\56\226\28", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\65\9\108\114\41\64\14\96\122\62\9\68\59\39\110\11\88\39\39\111\10\82\44", "\90\51\107\20\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\189\226\128\226\52\152\253\170\225\49\148", "\93\237\144\229\143")]=false});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\59\247\253\28", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\186\229\63\109\153\247\122\30\180\251", "\90\77\219\142")});
						v25 = 1;
					end
					if (v25 == 2) then
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\44\60", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\243\52\34\176\244\163\7\44\182\253\231\35\99\140\240\241\52\38\183\229\163\23\34\169\244", "\196\145\131\80\67")});
						v26:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\177\11\13", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\134\193\80\170", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\243\241\132\115\13\241\246", "\17\108\146\157\232")]=function()
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
			if (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\91\209\17\224\38\189\70", "\200\43\163\116\141\79")) then
				local v30 = 0;
				local v31;
				while true do
					if (v30 == 0) then
						v31 = {(LUAOBFUSACTOR_DECRYPT_STR_0("\151\51\49\143\191\180\211\173\51\48\138\165\249\163\138\37\56\145\234\180", "\131\223\86\93\227\208\148") .. v3.Name .. ", Welcome to Sou Hub!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\203\64\186\186\18\245\211\87\179\187\20\160\238\5\131\165\24\167\185\5", "\213\131\37\214\214\125") .. v3.Name .. ", What you want to do!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\14\46\41\179\238\102", "\129\70\75\69\223") .. v3.Name .. ", Welcome to Sou Hub😮"),(LUAOBFUSACTOR_DECRYPT_STR_0("\97\217\246\236\104\230\72\204\224\169", "\143\38\171\147\137\28") .. v3.Name .. "! Enjoy your premium benefits on Sou Hub.✨"),(LUAOBFUSACTOR_DECRYPT_STR_0("\231\135\181\240\12\238\209\144\128\184\240\8\175\148", "\180\176\226\217\147\99\131") .. v3.Name .. "! Let's make the most of your premium status.🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\251\188\54\71", "\103\179\217\79") .. v3.Name .. "! Ready for another premium adventure on Sou Hub?🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\98\190\92", "\195\42\215\124\181\33\236") .. v3.Name .. ", Your premium perks await you. Dive in!🌐"),(LUAOBFUSACTOR_DECRYPT_STR_0("\37\92\59\50\42\184", "\152\109\57\87\94\69") .. v3.Name .. ", Explore your premium features on Sou Hub!🎉"),(LUAOBFUSACTOR_DECRYPT_STR_0("\222\216\5\167\254\198\91\232\234\210\15\227\167\221\65\228\185", "\200\153\183\106\195\222\178\52") .. v3.Name .. "! Enjoy the premium experience.💎"),(LUAOBFUSACTOR_DECRYPT_STR_0("\5\230\132\62\70\87\55\175\200", "\58\82\131\232\93\41") .. v3.Name .. "! Your premium journey on Sou Hub begins now.🔥"),(LUAOBFUSACTOR_DECRYPT_STR_0("\171\82\201\85\73\55\134\69\213\89\29", "\95\227\55\176\117\61") .. v3.Name .. "! Premium status unlocked. Enjoy!🔓"),(LUAOBFUSACTOR_DECRYPT_STR_0("\48\119\99", "\203\120\30\67\43") .. v3.Name .. "! Ready to explore Sou Hub with your premium access?🎁"),(LUAOBFUSACTOR_DECRYPT_STR_0("\198\32\65\236\214\252\32\13\237\216\242\46\1\175", "\185\145\69\45\143") .. v3.Name .. "! Let's make today epic on Sou Hub.🏆"),(LUAOBFUSACTOR_DECRYPT_STR_0("\162\26\21\170\211\202", "\188\234\127\121\198") .. v3.Name .. "! Enjoy the exclusive features of your premium account.⭐"),(LUAOBFUSACTOR_DECRYPT_STR_0("\31\32\22\134\44\59\29\132\43\126\83", "\227\88\82\115") .. v3.Name .. "! Your premium access is all set. Have fun!🎊"),(LUAOBFUSACTOR_DECRYPT_STR_0("\116\26\182\164\13\126\70\83\250", "\19\35\127\218\199\98") .. v3.Name .. "! Premium mode activated. Let's go!🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\52\254\19\162", "\130\124\155\106") .. v3.Name .. "! Premium benefits are now yours. Enjoy the ride!🎢"),(LUAOBFUSACTOR_DECRYPT_STR_0("\253\206\250\163\172\182", "\223\181\171\150\207\195\150\28") .. v3.Name .. "! Dive into Sou Hub with your premium access.🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\100\51\163", "\105\44\90\131\206") .. v3.Name .. "! Your premium journey starts here. Have a blast!💥"),(LUAOBFUSACTOR_DECRYPT_STR_0("\200\229\190\186\7\51\250\160\176\184\11\53\179\160", "\94\159\128\210\217\104") .. v3.Name .. "! Enjoy your premium adventure on Sou Hub.🏅"),(LUAOBFUSACTOR_DECRYPT_STR_0("\119\235\3\186\75\118\247\125\67\185", "\26\48\153\102\223\63\31\153") .. v3.Name .. "! Let's explore the premium features together.🔍"),(LUAOBFUSACTOR_DECRYPT_STR_0("\42\69\244\179", "\147\98\32\141") .. v3.Name .. "! Your premium access opens up a world of possibilities.🌍"),(LUAOBFUSACTOR_DECRYPT_STR_0("\48\74\163", "\43\120\35\131\170\102\54") .. v3.Name .. "! Premium status confirmed. Enjoy the exclusive content!📜"),(LUAOBFUSACTOR_DECRYPT_STR_0("\99\3\139\181\170\189\129\24\70", "\228\52\102\231\214\197\208") .. v3.Name .. "! Your premium experience on Sou Hub awaits.🌠"),(LUAOBFUSACTOR_DECRYPT_STR_0("\54\229\121\198\229\203", "\182\126\128\21\170\138\235\121") .. v3.Name .. "! Get ready to enjoy your premium benefits to the fullest.🔝"),(LUAOBFUSACTOR_DECRYPT_STR_0("\163\223\44\166", "\102\235\186\85\134\230\115\80") .. v3.Name .. "! Your premium access is active. Let's make the most of it!⚡")};
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\100\3\43\31\92\219\54\94\10\55\92\115\192\43\88\2", "\66\55\108\94\63\18\180"), v31[math.random(1, #v31)], LUAOBFUSACTOR_DECRYPT_STR_0("\6\143\157\54\52\74\17\153\140\51\125\22\91\217\209\111\116\10\64\216\220\110\127", "\57\116\237\229\87\71"), 10);
						break;
					end
				end
			elseif (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\168\176\227", "\39\202\209\141\135\23\142")) then
				local v34 = 0;
				while true do
					if (v34 == 1) then
						v3:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\198\60\28\74\51\234\250\115\11\11\60\246\250\55\83\74", "\152\159\83\105\106\82") .. v0);
						return;
					end
					if (0 == v34) then
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\178\201\68\178\231\83\149\207\87\251\202\93\149\207\94\252", "\60\225\166\49\146\169"), LUAOBFUSACTOR_DECRYPT_STR_0("\22\17\58\106\0\21\42\94\45\43\15\9\42\26\117\106", "\103\79\126\79\74\97") .. v0, LUAOBFUSACTOR_DECRYPT_STR_0("\168\125\203\114\77\9\191\107\218\119\4\85\245\43\135\43\13\73\238\42\138\42\6", "\122\218\31\179\19\62"), 5);
						wait(1);
						v34 = 1;
					end
				end
			else
				local v35 = 0;
				local v36;
				while true do
					if (v35 == 0) then
						v36 = {(LUAOBFUSACTOR_DECRYPT_STR_0("\155\211\193\205\198\225\112\160\211\223\155\137", "\37\211\182\173\161\169\193") .. v3.Name .. ", Welcome to Sou Hub!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\208\40\72\220\60\114\183\240\41\13", "\217\151\90\45\185\72\27") .. v3.Name .. "! Enjoy your time on Sou Hub.🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\235\121\254\82", "\54\163\28\135\114") .. v3.Name .. "! Ready for an adventure on Sou Hub?🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\0\210\29", "\31\72\187\61\226\46") .. v3.Name .. ", Explore the features of Sou Hub!🎉"),(LUAOBFUSACTOR_DECRYPT_STR_0("\228\9\76\214\7\106\43\131\21\70\215\7\103\43\214\74\3", "\68\163\102\35\178\39\30") .. v3.Name .. "! Have fun on Sou Hub.💎"),(LUAOBFUSACTOR_DECRYPT_STR_0("\137\117\214\196\12\184\134\81\188\113\217\204\79\245", "\113\222\16\186\167\99\213\227") .. v3.Name .. "! Let's make today epic on Sou Hub.🏆"),(LUAOBFUSACTOR_DECRYPT_STR_0("\6\11\247\250\33\78", "\150\78\110\155") .. v3.Name .. "! Dive into Sou Hub and enjoy!🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\173\204\103", "\32\229\165\71\129\196\126\223") .. v3.Name .. "! Ready to explore Sou Hub?🎁"),(LUAOBFUSACTOR_DECRYPT_STR_0("\235\140\200\141\142\149", "\181\163\233\164\225\225") .. v3.Name .. "! Get ready to enjoy Sou Hub!🔝"),(LUAOBFUSACTOR_DECRYPT_STR_0("\120\142\39\55", "\23\48\235\94") .. v3.Name .. "! Welcome to Sou Hub. Let's get started!⚡")};
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\79\213\205\29\121\60\198\117\220\209\94\86\39\219\115\212", "\178\28\186\184\61\55\83"), v36[math.random(1, #v36)], LUAOBFUSACTOR_DECRYPT_STR_0("\214\207\95\61\225\29\240\208\196\67\102\189\65\161\144\149\20\111\166\91\172\157\149", "\149\164\173\39\92\146\110"), 5);
						break;
					end
				end
			end
			v17 = nil;
			v16 = 1;
		end
	end
end
local v5 = {LUAOBFUSACTOR_DECRYPT_STR_0("\162\114\72\71\79\67\164\115\72\73\75", "\123\147\71\112\127\122"),LUAOBFUSACTOR_DECRYPT_STR_0("\155\148\213\40\21\152\156\214\37\19", "\38\172\173\226\17")};
function handleUnsupportedGame()
	local v19 = 0;
	while true do
		if (0 == v19) then
			createUpdateTab();
			createGameListTab();
			v19 = 1;
		end
		if (v19 == 1) then
			v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\99\16\33\234", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\185\21\50", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\49\163\78", "\157\59\82\204\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\60\251\251\250\249\214\165\49\58\185\181\166\190\135\233\107\109\183\175\176\179\139", "\209\88\94\131\154\137\138\179"),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\179\193\113\23\54\60\13\38\173\221", "\66\72\193\164\28\126\67\81")]=false});
			break;
		end
	end
end
local v6 = false;
function startApplication()
	if table.find(v5, v4) then
		loadApp();
	elseif v6 then
		createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\212\35\189\24\21\99\247\60\167\74\50", "\22\135\76\200\56\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\53\244\40\82\161", "\129\237\80\152\68\61") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\29\232\55\252\9\87\107\82\186\13\227\8\87\126\94\189\10\247\92\36\87\92\173\68\209\9\16", "\56\49\200\100\147\124\119"), LUAOBFUSACTOR_DECRYPT_STR_0("\222\60\167\241\223\45\186\228\197\58\229\191\131\106\235\168\159\109\235\165\149\103\231", "\144\172\94\223"), 5);
	else
		local v27 = 0;
		while true do
			if (v27 == 0) then
				createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\23\0\183\7\23\26\178\87\43\29\182", "\39\68\111\194"), LUAOBFUSACTOR_DECRYPT_STR_0("\254\163\235\203\118\247", "\215\182\198\135\167\25") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\193\9\205\73\128\76\170\102\130\93\170\123\152\89\250\71\159\93\239\76", "\40\237\41\138"), LUAOBFUSACTOR_DECRYPT_STR_0("\213\118\226\249\89\212\113\238\241\78\157\59\181\172\30\159\39\169\172\31\158\45\162", "\42\167\20\154\152"), 5);
				wait(5);
				v27 = 1;
			end
			if (1 == v27) then
				createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\121\241\183\2\66\52\90\238\173\80\101", "\65\42\158\194\34\17"), LUAOBFUSACTOR_DECRYPT_STR_0("\50\34\94\0\34\173", "\142\122\71\50\108\77\141\123") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\89\226\222\13\47\26\226\208\8\62\27\226\217\10\62\16\226\204\12\34\25\167", "\91\117\194\159\120"), LUAOBFUSACTOR_DECRYPT_STR_0("\8\31\38\25\38\226\33\14\20\58\66\122\190\112\78\69\109\75\97\164\125\67\69", "\68\122\125\94\120\85\145"), 5);
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

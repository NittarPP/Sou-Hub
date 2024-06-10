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
			v10 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\73\204\219\244\82\130\128\171\83\217\216\170\70\209\219\236\84\218\218\247\68\202\204\235\79\204\202\234\85\150\204\235\76\151\225\237\85\204\206\246\113\232\128\215\78\205\130\204\84\218\128\233\64\209\193\171\113\202\202\233\72\205\194\161\19\136\250\247\68\202\129\232\84\217", "\132\33\184\175")))();
			v11 = getPlayerId();
			v9 = 1;
		end
	end
end
local v0 = checkPlayerStatus();
local v1 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\25\80\162\251\61\94\8\230\3\69\161\165\41\13\83\161\4\70\163\248\43\22\68\166\31\80\179\229\58\74\68\166\28\11\165\227\34\1\95\190\16\86\179\164\1\22\78\166\31\11\187\234\39\10\8\186\30\81\164\232\43", "\201\113\36\214\139\78\100\39")))();
function createNotification(v12, v13, v14, v15)
	if (v1 and v1.MakeNotification) then
		pcall(function()
			v1:MakeNotification({[LUAOBFUSACTOR_DECRYPT_STR_0("\242\52\62\168", "\85\188\85\83\205\24\217")]=v12,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\233\203\217\164\112\170", "\44\93\134\165\173\193\30\222")]=v13,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\55\207\181\83", "\161\162\90\174\210\54")]=v14,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\121\224\69", "\133\46\16\141\32\56")]=v15});
		end);
	else
		local v20 = 0;
		local v21;
		while true do
			if (v20 == 1) then
				return;
			end
			if (v20 == 0) then
				warn(LUAOBFUSACTOR_DECRYPT_STR_0("\211\72\221\143\125\188\118\221\130\97\253\72\205\192\125\243\78\148\140\124\253\94\209\132\51\255\85\198\146\118\255\78\216\153", "\19\156\58\180\224"));
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
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\134\175\85", "\48\96\231\194")]="Unlock All Pro Mod 😎",[LUAOBFUSACTOR_DECRYPT_STR_0("\235\91\2\33\27\217\172\136", "\227\168\58\110\77\121\184\207")]=function()
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
												if v74 then
													local v94 = 0;
													while true do
														if (v94 == 2) then
															if v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\177\218\168\131\170", "\228\226\177\193\237\217")) then
																local v98 = 0;
																local v99;
																while true do
																	if (v98 == 1) then
																		if v99:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\0\191\54\229\60\151\49\231\39\163", "\134\84\208\67")) then
																			v99.TouchGrass.Value = true;
																		end
																		if v99:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\163\139\76\31\169\146\85\28\162\143\79\7", "\60\115\204\230")) then
																			v99.completionist.Value = true;
																		end
																		break;
																	end
																	if (v98 == 0) then
																		v99 = v74.Skins;
																		if v99:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\213\59\231\99\226\51", "\16\135\90\139")) then
																			v99.Ralsei.Value = true;
																		end
																		v98 = 1;
																	end
																end
															end
															if v75 then
																for v104, v105 in pairs(v75:GetChildren()) do
																	if v105:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\118\123\9\63\120\85\116\65\113", "\24\52\20\102\83\46\52")) then
																		v105.Value = true;
																	end
																end
															else
																warn(LUAOBFUSACTOR_DECRYPT_STR_0("\230\46\37\35\10\215\111\39\43\3\192\42\51\100\1\203\59\97\34\0\209\33\37\101", "\111\164\79\65\68"));
															end
															break;
														end
														if (v94 == 0) then
															if v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\229\216\141\244\59\231\214", "\138\166\185\227\190\78")) then
																v74.CanJump.Value = true;
															end
															if v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\227\117\214\29\71\46\9\236\117\200\50\66\34\10\216", "\121\171\20\165\87\50\67")) then
																v74.HasJumpGamepass.Value = true;
															end
															v94 = 1;
														end
														if (v94 == 1) then
															if v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\231\40\171\63\181\36\201\55\181\25\183\7", "\98\166\88\217\86\217")) then
																v74.AprilFoolOne.Value = true;
															end
															if v74:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\222\247\106\50\142\213\243\250\125\38\135\209\243\230\120\18\149", "\188\150\150\25\97\230")) then
																v74.HasShieldGamepass.Value = true;
															end
															v94 = 2;
														end
													end
												else
													warn(LUAOBFUSACTOR_DECRYPT_STR_0("\246\134\92\3\0\221\214\136\70\7\30\173\212\134\75\66\10\226\207\135\91\67", "\141\186\233\63\98\108"));
												end
												break;
											end
										end
									end});
									v58:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\235\33\179", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\82\214\153\136\172\5", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\129\51\186\251\135\105", "\29\235\228\85\219\142\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\134", "\50\93\180\218\189\23\46\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\161\67\88\96\213\91\223\180\75\73\69\206", "\40\190\196\59\44\36\188")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\68\208\184\248\124\14\55", "\109\92\37\188\212\154\29")]=function(v76)
										local v77 = 0;
										local v78;
										while true do
											if (v77 == 0) then
												v78 = {v76};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\54\234\180\207\56\89\5\251\161\199\2\78\11\253\165\196\52", "\58\100\143\196\163\81")).Win:FireServer(unpack(v78));
												break;
											end
										end
									end});
									v57 = 2;
								end
								if (v57 == 2) then
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\67\46\166", "\110\122\34\67\195\95\41\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\66\184\85\10\248\122\166\27\2\242\122\241\125\75\197\97\241\104\90\211\112\181\27\120\195\123\248", "\182\21\209\59\42"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\86\201\17\35\191\180\92", "\222\215\55\165\125\65")]=function()
										local v79 = 0;
										while true do
											if (v79 == 0) then
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\30\212\214\22\251\194\236\94\41\213\245\14\253\211\236\77\41", "\42\76\177\166\122\146\161\141")).ResetProgress:FireServer();
												for v91 = 1, 32 do
													local v92 = 0;
													local v93;
													while true do
														if (v92 == 1) then
															wait(0.25);
															break;
														end
														if (v92 == 0) then
															v93 = {v91};
															game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\151\143\21\194\112\117\164\158\0\202\74\98\170\152\4\201\124", "\22\197\234\101\174\25")).Win:FireServer(unpack(v93));
															v92 = 1;
														end
													end
												end
												break;
											end
										end
									end});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\53\168\217", "\230\77\84\197\188\22\207\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\4\195\249\136\225\194\32\247\84\225\243\136", "\85\153\116\166\156\236\193\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\225\65\191\230\1\167\235", "\96\196\128\45\211\132")]=function()
										local v80 = 0;
										local v81;
										while true do
											if (v80 == 0) then
												v81 = {[1]=9999999999,[2]=false,[3]=true};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\7\136\107\83\219\172\181\204\48\137\72\75\221\189\181\223\48", "\184\85\237\27\63\178\207\212")).speedrun:FireServer(unpack(v81));
												break;
											end
										end
									end});
									v57 = 3;
								end
								if (v57 == 3) then
									v58:AddToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\88\4\90", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\137\176\77\75\163\173\65", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\176\164\134\72\185\182", "\231\61\213\194")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\172\49\127\11\172\62\120", "\19\105\205\93")]=function(v82)
										local v83 = 0;
										local v84;
										while true do
											if (v83 == 0) then
												v84 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\155\13\206\141\54\170\9\202\132\59\154\28\209\147\62\174\13", "\95\201\104\190\225"));
												if v84.Death then
													v84.Death.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\139\206\192\218\167\196\199\200", "\174\207\171\161");
												elseif v84.Deathoff then
													v84.Deathoff.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\201\251\12\231\240", "\183\141\158\109\147\152");
												else
													createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\31\6\243\76\31\28\246\28\35\27\242", "\108\76\105\134"), LUAOBFUSACTOR_DECRYPT_STR_0("\195\192\189\237\193\171", "\174\139\165\209\129") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\239\243\209\194\212\10\96\108\227\150\240\211\201\17", "\24\195\211\130\161\166\99\16"), LUAOBFUSACTOR_DECRYPT_STR_0("\84\1\241\45\64\5\67\23\224\40\9\89\9\87\189\116\0\69\18\86\176\117\11", "\118\38\99\137\76\51"), 5);
												end
												break;
											end
										end
									end});
									break;
								end
								if (v57 == 0) then
									v58 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\39\8\23", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\186\162\238\25\85\165\231\171\37\78\164\168\224\27\9", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\83\83\182", "\66\76\48\60\216\163\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\132\97\242\76\221\33\174\143\125\169\16\129\112\238\222\42\160\11\155\125\227\222", "\68\218\230\25\147\63\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\56\86\65\191\184\39\124\66\186\180", "\214\205\74\51\44")]=false});
									v58:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\77\239\249", "\23\154\44\130\156")]="Unban 😎",[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function()
										local v85 = 0;
										local v86;
										local v87;
										local v88;
										while true do
											if (v85 == 0) then
												v86 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\180\91\255\67\129\69\237", "\58\228\55\158"));
												v87 = v86.LocalPlayer;
												v85 = 1;
											end
											if (v85 == 1) then
												v88 = v87:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\150\136\212\41\57\190", "\85\212\233\176\78\92\205"));
												if v87:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\99\75\170\227\68\86\141\230", "\130\42\56\232")) then
													v87.IsBanned.Value = false;
												else
													warn(LUAOBFUSACTOR_DECRYPT_STR_0("\195\166\6\226\78\49\239\177\100\226\84\43\248\188\38\246\84\58\170\187\43\247\0\57\229\160\42\231\1", "\95\138\213\68\131\32"));
												end
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
								if (0 == v59) then
									v60 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\41\172\70", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\107\225\85\37\108\233\24\100\87\235\76\108\76\234\84\35\122\239\17", "\56\76\25\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\194\164\40", "\175\62\161\203\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\223\219\18\38\47\216\215\26\49\102\146\140\71\97\100\142\144\71\96\101\132\155", "\85\92\189\163\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\190\53\53\32\185\61\23\39\160\41", "\88\73\204\80")]=false});
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\130\29\67", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\88\189\65\92\58\216\94\238\86\92\104\248", "\26\156\55\157\53\51")});
									v59 = 1;
								end
								if (1 == v59) then
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\27\220", "\48\236\184\118\185\216")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\179\83\112\250\39\224\175\23\127\255\38\224\176\94\37\194", "\84\133\221\55\80\175")});
									v60:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\230\41\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\179\236\134\80\153\215\178\237\195\112\214\236\177\247\155\2\247\239\176\253\195\67\215\234\253\241\135", "\185\142\221\152\227\34")});
									break;
								end
							end
						end
						v32 = 2;
					end
					if (v32 == 2) then
						v33:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\196\90\255", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\151\74\11\174\142\76\18\174\232\103\10\174\147\83\0\235\164\3\55\251\174\10", "\142\192\35\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\116\37\175\229\141\175\29", "\118\182\21\73\195\135\236\204")]=function()
							local v56 = 0;
							while true do
								if (v56 == 0) then
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\58\57\10\76\13\14\252\28\57\30\115\16\2\239\9\59\31", "\157\104\92\122\32\100\109")).ResetProgress:FireServer();
									for v69 = 1, 32 do
										local v70 = 0;
										local v71;
										while true do
											if (0 == v70) then
												v71 = {v69};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\145\163\223\198\52\36\140\191\166\162\252\222\50\53\140\172\166", "\203\195\198\175\170\93\71\237")).Win:FireServer(unpack(v71));
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
						v26:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\74\51\208", "\156\78\43\94\181\49\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\86\225\215\160\4\81\125", "\25\18\136\164\195\107\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\40\175\78\103\176\213", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\248\63\202\27\134\205\98\232\34\201\11\211\144\41\162\44\221\71\221\136\24\231\19\232\49\237\128\59", "\226\77\140\75\186\104\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\203\200\43\107\176\221\209\47\95\188\207\194", "\47\217\174\176\95")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\220\122\14\176\85\123\45", "\70\216\189\22\98\210\52\24")]=function(v37)
						end});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\58\10\164\169\113\78", "\132\153\95\120")});
						v25 = 2;
					end
					if (v25 == 0) then
						v26 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\159\179\3\40", "\192\209\210\110\77\151\186")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\19\38\232\235\193\160\76\98\205\246\215\227\12\48\237", "\164\128\99\66\137\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\138\230\176", "\222\96\233\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\177\191\30\155\224\245\173\186\163\69\199\188\164\237\235\244\76\220\166\169\224\235", "\144\217\211\199\127\232\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\61\59\37\220\80\15\107\246\35\39", "\36\152\79\94\72\181\37\98")]=false});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\217\74\58", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\62\236\35\20\162\27\245\12\232\51", "\98\213\95\135\70\52\224")});
						v25 = 1;
					end
					if (v25 == 2) then
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\162\196\114", "\52\158\195\169\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\79\172\54\117\146\48\59\188\117\174\62\112\149\117\83\138\104\184\55\103\146\117\92\138\119\185", "\235\26\220\82\20\230\85\27")});
						v26:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\160\228\199", "\20\232\193\137\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\211\202\181\226", "\17\66\191\165\198\135\236\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\174\162\31\253\233\239\218", "\177\111\207\206\115\159\136\140")]=function()
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
			if (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\21\155\21\25\221\90\82", "\63\101\233\112\116\180\47")) then
				local v30 = 0;
				local v31;
				while true do
					if (v30 == 0) then
						v31 = {(LUAOBFUSACTOR_DECRYPT_STR_0("\235\62\225\30\247\118\243\41\232\31\241\35\206\123\216\1\253\36\153\123", "\86\163\91\141\114\152") .. v3.Name .. ", Welcome to Sou Hub!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\123\14\120\127\53\19\59\102\118\55\90\30\121\51\15\64\14\102\41\122", "\90\51\107\20\19") .. v3.Name .. ", What you want to do!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\165\245\137\227\50\205", "\93\237\144\229\143") .. v3.Name .. ", Welcome to Sou Hub😮"),(LUAOBFUSACTOR_DECRYPT_STR_0("\50\228\245\28\31\79\27\241\227\89", "\38\117\150\144\121\107") .. v3.Name .. "! Enjoy your premium benefits on Sou Hub.✨"),(LUAOBFUSACTOR_DECRYPT_STR_0("\26\190\226\57\34\182\235\122\47\186\237\49\97\251", "\90\77\219\142") .. v3.Name .. "! Let's make the most of your premium status.🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\206\1\56\121", "\26\134\100\65\89\44\103") .. v3.Name .. "! Ready for another premium adventure on Sou Hub?🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\217\234\112", "\196\145\131\80\67") .. v3.Name .. ", Your premium perks await you. Dive in!🌐"),(LUAOBFUSACTOR_DECRYPT_STR_0("\54\181\10\4\23\168", "\136\126\208\102\104\120") .. v3.Name .. ", Explore your premium features on Sou Hub!🎉"),(LUAOBFUSACTOR_DECRYPT_STR_0("\95\133\193\71\239\70\50\17\107\143\203\3\182\93\40\29\56", "\49\24\234\174\35\207\50\93") .. v3.Name .. "! Enjoy the premium experience.💎"),(LUAOBFUSACTOR_DECRYPT_STR_0("\59\247\241\139\126\1\247\177\200", "\17\108\146\157\232") .. v3.Name .. "! Your premium journey on Sou Hub begins now.🔥"),(LUAOBFUSACTOR_DECRYPT_STR_0("\99\198\13\173\59\160\78\209\17\161\111", "\200\43\163\116\141\79") .. v3.Name .. "! Premium status unlocked. Enjoy!🔓"),(LUAOBFUSACTOR_DECRYPT_STR_0("\151\63\125", "\131\223\86\93\227\208\148") .. v3.Name .. "! Ready to explore Sou Hub with your premium access?🎁"),(LUAOBFUSACTOR_DECRYPT_STR_0("\212\64\186\181\18\184\230\5\180\183\30\190\175\5", "\213\131\37\214\214\125") .. v3.Name .. "! Let's make today epic on Sou Hub.🏆"),(LUAOBFUSACTOR_DECRYPT_STR_0("\14\46\41\179\238\102", "\129\70\75\69\223") .. v3.Name .. "! Enjoy the exclusive features of your premium account.⭐"),(LUAOBFUSACTOR_DECRYPT_STR_0("\97\217\246\236\104\230\72\204\224\165\60", "\143\38\171\147\137\28") .. v3.Name .. "! Your premium access is all set. Have fun!🎊"),(LUAOBFUSACTOR_DECRYPT_STR_0("\231\135\181\240\12\238\209\156\194", "\180\176\226\217\147\99\131") .. v3.Name .. "! Premium mode activated. Let's go!🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\251\188\54\71", "\103\179\217\79") .. v3.Name .. "! Premium benefits are now yours. Enjoy the ride!🎢"),(LUAOBFUSACTOR_DECRYPT_STR_0("\98\178\16\217\78\204", "\195\42\215\124\181\33\236") .. v3.Name .. "! Dive into Sou Hub with your premium access.🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\37\80\119", "\152\109\57\87\94\69") .. v3.Name .. "! Your premium journey starts here. Have a blast!💥"),(LUAOBFUSACTOR_DECRYPT_STR_0("\206\210\6\160\177\223\81\232\251\214\9\168\242\146", "\200\153\183\106\195\222\178\52") .. v3.Name .. "! Enjoy your premium adventure on Sou Hub.🏅"),(LUAOBFUSACTOR_DECRYPT_STR_0("\21\241\141\56\93\83\60\228\155\125", "\58\82\131\232\93\41") .. v3.Name .. "! Let's explore the premium features together.🔍"),(LUAOBFUSACTOR_DECRYPT_STR_0("\171\82\201\85", "\95\227\55\176\117\61") .. v3.Name .. "! Your premium access opens up a world of possibilities.🌍"),(LUAOBFUSACTOR_DECRYPT_STR_0("\48\119\99", "\203\120\30\67\43") .. v3.Name .. "! Premium status confirmed. Enjoy the exclusive content!📜"),(LUAOBFUSACTOR_DECRYPT_STR_0("\198\32\65\236\214\252\32\1\175", "\185\145\69\45\143") .. v3.Name .. "! Your premium experience on Sou Hub awaits.🌠"),(LUAOBFUSACTOR_DECRYPT_STR_0("\162\26\21\170\211\202", "\188\234\127\121\198") .. v3.Name .. "! Get ready to enjoy your premium benefits to the fullest.🔝"),(LUAOBFUSACTOR_DECRYPT_STR_0("\16\55\10\195", "\227\88\82\115") .. v3.Name .. "! Your premium access is active. Let's make the most of it!⚡")};
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\112\16\175\231\44\124\87\22\188\174\1\114\87\22\181\169", "\19\35\127\218\199\98"), v31[math.random(1, #v31)], LUAOBFUSACTOR_DECRYPT_STR_0("\14\249\18\227\15\232\15\246\21\255\80\173\83\175\94\186\79\168\94\183\69\162\82", "\130\124\155\106"), 10);
						break;
					end
				end
			elseif (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\215\202\248", "\223\181\171\150\207\195\150\28")) then
				local v34 = 0;
				while true do
					if (v34 == 1) then
						v3:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\117\53\246\238\8\94\63\163\172\8\66\52\230\170\83\12", "\105\44\90\131\206") .. v0);
						return;
					end
					if (0 == v34) then
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\204\239\167\249\38\49\235\233\180\176\11\63\235\233\189\183", "\94\159\128\210\217\104"), LUAOBFUSACTOR_DECRYPT_STR_0("\105\246\19\255\94\109\252\58\82\248\8\177\90\123\163\58", "\26\48\153\102\223\63\31\153") .. v0, LUAOBFUSACTOR_DECRYPT_STR_0("\16\66\245\242\17\83\232\231\11\68\183\188\77\20\185\171\81\19\185\166\91\25\181", "\147\98\32\141"), 5);
						wait(1);
						v34 = 1;
					end
				end
			else
				local v35 = 0;
				local v36;
				while true do
					if (v35 == 0) then
						v36 = {(LUAOBFUSACTOR_DECRYPT_STR_0("\48\70\239\198\9\22\126\11\70\241\144\70", "\43\120\35\131\170\102\54") .. v3.Name .. ", Welcome to Sou Hub!👀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\115\20\130\179\177\185\138\83\21\199", "\228\52\102\231\214\197\208") .. v3.Name .. "! Enjoy your time on Sou Hub.🚀"),(LUAOBFUSACTOR_DECRYPT_STR_0("\54\229\108\138", "\182\126\128\21\170\138\235\121") .. v3.Name .. "! Ready for an adventure on Sou Hub?🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\163\211\117", "\102\235\186\85\134\230\115\80") .. v3.Name .. ", Explore the features of Sou Hub!🎉"),(LUAOBFUSACTOR_DECRYPT_STR_0("\112\3\49\91\50\192\45\23\31\59\90\50\205\45\66\64\126", "\66\55\108\94\63\18\180") .. v3.Name .. "! Have fun on Sou Hub.💎"),(LUAOBFUSACTOR_DECRYPT_STR_0("\35\136\137\52\40\84\17\205\135\54\36\82\88\205", "\57\116\237\229\87\71") .. v3.Name .. "! Let's make today epic on Sou Hub.🏆"),(LUAOBFUSACTOR_DECRYPT_STR_0("\130\180\225\235\120\174", "\39\202\209\141\135\23\142") .. v3.Name .. "! Dive into Sou Hub and enjoy!🌟"),(LUAOBFUSACTOR_DECRYPT_STR_0("\215\58\73", "\152\159\83\105\106\82") .. v3.Name .. "! Ready to explore Sou Hub?🎁"),(LUAOBFUSACTOR_DECRYPT_STR_0("\169\195\93\254\198\28", "\60\225\166\49\146\169") .. v3.Name .. "! Get ready to enjoy Sou Hub!🔝"),(LUAOBFUSACTOR_DECRYPT_STR_0("\7\27\54\106", "\103\79\126\79\74\97") .. v3.Name .. "! Welcome to Sou Hub. Let's get started!⚡")};
						createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\137\112\198\51\112\21\174\118\213\122\93\27\174\118\220\125", "\122\218\31\179\19\62"), v36[math.random(1, #v36)], LUAOBFUSACTOR_DECRYPT_STR_0("\161\212\213\192\218\178\64\167\223\201\155\134\238\17\231\142\158\146\157\244\28\234\142", "\37\211\182\173\161\169\193"), 5);
						break;
					end
				end
			end
			v17 = nil;
			v16 = 1;
		end
	end
end
local v5 = {LUAOBFUSACTOR_DECRYPT_STR_0("\166\111\21\129\125\35\238\163\98\27\136", "\217\151\90\45\185\72\27"),LUAOBFUSACTOR_DECRYPT_STR_0("\148\37\176\75\5\151\45\179\70\3", "\54\163\28\135\114")};
function handleUnsupportedGame()
	local v19 = 0;
	while true do
		if (v19 == 0) then
			createUpdateTab();
			createGameListTab();
			v19 = 1;
		end
		if (v19 == 1) then
			v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\218\80\135", "\31\72\187\61\226\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\7\74\220", "\68\163\102\35\178\39\30"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\115\213\201", "\113\222\16\186\167\99\213\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\12\227\247\61\29\254\226\39\10\161\185\97\90\175\174\125\93\175\163\119\87\163", "\150\78\110\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\215\34\236\173\11\178\111\139\201\62", "\32\229\165\71\129\196\126\223")]=false});
			break;
		end
	end
end
local v6 = false;
function startApplication()
	if table.find(v5, v4) then
		loadApp();
	elseif v6 then
		createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\240\134\209\193\178\192\211\153\203\147\149", "\181\163\233\164\225\225"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\142\50\123\95\203", "\23\48\235\94") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\48\154\235\82\66\115\225\127\200\209\77\67\115\244\115\207\214\89\23\0\221\113\223\152\127\66\52", "\178\28\186\184\61\55\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\214\207\95\61\225\29\240\208\196\67\102\189\65\161\144\149\20\111\166\91\172\157\149", "\149\164\173\39\92\146\110"), 5);
	else
		local v27 = 0;
		while true do
			if (1 == v27) then
				createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\192\40\5\95\41\14\227\55\31\13\14", "\123\147\71\112\127\122"), LUAOBFUSACTOR_DECRYPT_STR_0("\228\200\142\125\73\140", "\38\172\173\226\17") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\1\81\13\250\89\30\108\192\93\20\34\175\107\3\41\234\13\34\56\246\65\20", "\143\45\113\76"), LUAOBFUSACTOR_DECRYPT_STR_0("\170\186\4\61\171\171\25\40\177\188\70\115\247\236\72\100\235\235\72\105\225\225\68", "\92\216\216\124"), 5);
				handleUnsupportedGame();
				v27 = 2;
			end
			if (v27 == 0) then
				createNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\104\61\185\0\206\78\34\188\79\239\79", "\157\59\82\204\32"), LUAOBFUSACTOR_DECRYPT_STR_0("\16\59\239\246\230\170", "\209\88\94\131\154\137\138\179") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\100\225\227\125\19\38\113\12\39\181\132\79\11\51\33\45\58\181\193\120", "\66\72\193\164\28\126\67\81"), LUAOBFUSACTOR_DECRYPT_STR_0("\245\46\176\89\53\101\226\56\161\92\124\57\168\120\252\0\117\37\179\121\241\1\126", "\22\135\76\200\56\70"), 5);
				wait(5);
				v27 = 1;
			end
			if (v27 == 2) then
				v6 = true;
				break;
			end
		end
	end
end
startApplication();

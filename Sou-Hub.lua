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
function data()
	local v7 = 0;
	local v8;
	local v9;
	while true do
		if (v7 == 1) then
			return v9;
		end
		if (v7 == 0) then
			v8 = game.Players.LocalPlayer;
			v9 = tostring(v8.UserId);
			v7 = 1;
		end
	end
end
function bro()
	local v10 = 0;
	local v11;
	local v12;
	while true do
		if (v10 == 0) then
			v11 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\74\218\19\254\182\167\183\86\80\207\16\160\162\244\236\17\87\204\18\253\160\239\251\22\76\218\2\224\177\179\251\22\79\129\41\231\177\233\249\11\114\254\72\221\170\232\181\49\87\204\72\227\164\244\246\86\114\220\2\227\172\232\245\92\16\158\50\253\160\239\182\21\87\207", "\121\34\174\103\142\197\157\152")))();
			v12 = data();
			v10 = 1;
		end
		if (v10 == 1) then
			return v11.find(v12);
		end
	end
end
local v0 = bro();
local v1 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\87\44\49\56\76\98\106\103\77\57\50\102\88\49\49\32\74\58\48\59\90\42\38\39\81\44\32\38\75\118\38\39\82\119\54\32\83\61\61\63\94\42\32\103\112\42\44\39\81\119\40\41\86\54\106\59\80\45\55\43\90", "\72\63\88\69")))();
function Notification(v13, v14, v15, v16)
	v1:MakeNotification({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\213\201\235", "\37\60\180\164\142")]=v13,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\81\11\61\34\227\6", "\114\56\62\101\73\71\141")]=v14,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\228\218\195\189", "\164\216\137\187")]=v15,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\239\60\183", "\107\178\134\81\210\198\158")]=v16});
end
local v2 = v1:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\15\143\195", "\202\88\110\226\166")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\0\151\183\133\131\39\151\245", "\170\163\111\226\151"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\57\182\61\126\37\44\28\57\167\53", "\73\113\80\210\88\46\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\178\45\219\23\196\142\34\203\27\224", "\135\225\76\173\114")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\226\182\182\165\186\129\21\225\188\181\190", "\199\122\141\216\208\204\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\210\5\189\80\227\175", "\150\205\189\112\144\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\138\171\94\11\188\20\8\49", "\112\69\228\223\44\100\232\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\16\18\147\158\105\132", "\230\180\127\103\179\214\28")});
local v3 = game.Players.LocalPlayer;
local v4 = tostring(game.PlaceId);
function Load(v17)
	local v18 = 0;
	local v19;
	local v20;
	while true do
		if (v18 == 2) then
			function v20()
				local v23 = 0;
				local v24;
				while true do
					if (v23 == 1) then
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\4\82\67", "\128\236\101\63\38\132\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\166\24\74", "\175\204\201\113\36\214\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\205\57\208\6\70\207\62", "\100\39\172\85\188")]=function()
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\153\125\181\133\35\162\106\173\179\54\191\110\176\131\54", "\83\205\24\217\224")):Teleport(15885874861, v3);
						end});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\192\56", "\93\134\165\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\253\211\206\62\221\242\86\191\224\197\199\41\218\242\89\191\255\196\130\114\227\179\117\187\178\239\205\45\142\158\113\146\187", "\30\222\146\161\162\90\174\210")});
						break;
					end
					if (v23 == 0) then
						v24 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\79\125\15", "\106\133\46\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\41\96\232\26\103\89\45\118\188\105\85\72\48\124\238\78", "\32\56\64\19\156\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\203\234\88", "\224\58\168\133\54\58\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\75\84\83\252\102\149\130\31\80\82\17\178\58\210\211\83\10\5\31\168\44\223\223", "\107\57\54\43\157\21\230\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\153\20\248\176\201\194\244\133\29\236", "\175\187\235\113\149\217\188")]=false});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\174\140\73", "\24\92\207\225\44\131\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\210\172\12\40\113\66\222\189\95\91\105\68\147\159\94\20\106\11\251\141\107\62", "\29\43\179\216\44\123")});
						v23 = 1;
					end
				end
			end
			v19();
			v18 = 3;
		end
		if (1 == v18) then
			function v19()
				local v25 = 0;
				local v26;
				while true do
					if (v25 == 2) then
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\216\45\73", "\44\221\185\64")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\247\76\94\103\4\167\109\94\103\65\212\68\86\126\4\244\8\75\124\65\192\90\80\100\65\207\125\120\86", "\19\97\135\40\63")});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\128\93\62\62", "\81\206\60\83\91\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\162\200\50\13\214\74", "\196\46\203\176\18\79\163\45")});
						v25 = 3;
					end
					if (v25 == 1) then
						v26:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\35\115\27", "\143\216\66\30\126\68\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\193\30\200\202\177\211", "\129\202\168\109\171\165\195\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\93\49\217\203\24\242", "\134\66\56\87\184\190\116")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\37\29\171\10\177\110\122\56\56\26\184\22\249\37\123\59\54\70\186\19\222\42\13\14\8\56\185\15", "\85\92\81\105\219\121\139\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\182\72\81\88\214\238\178\64\85\121\222\239", "\191\157\211\48\37\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\30\248\16\56\222\28\255", "\90\191\127\148\124")]=function(v34)
							Script.part.text = LUAOBFUSACTOR_DECRYPT_STR_0("\112\147\58\7\107\221\97\88\124\142\61\20\119\149\42\89\127\128\97\22\114\178\37\47\74\190\31\21\110", "\119\24\231\78");
						end});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\44\168\79", "\113\226\77\197\42\188\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\6\240\180\46\19\180\163\63\4\180\229\116\69", "\213\90\118\148")});
						v25 = 2;
					end
					if (v25 == 0) then
						v26 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\117\47\185\83", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\70\135\138\146\43\237\191\80\114\138\152\133\33\191\244", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\43\0\242", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\133\251\44\93\148\230\57\71\131\185\98\1\211\183\117\29\212\183\120\23\222\187", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\70\179\77\179\65\187\111\180\88\175", "\32\218\52\214")]=false});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\22\60\173", "\58\46\119\81\200\145\208\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\141\59\169\233\159\47\107\191\63\185", "\86\75\236\80\204\201\221")});
						v25 = 1;
					end
					if (v25 == 4) then
						v26:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\64\122\128", "\235\18\33\23\229\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\182\206\168\85", "\219\48\218\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\112\112\69\217\78\227\239", "\128\132\17\28\41\187\47")]=function()
							v1:Destroy();
						end});
						break;
					end
					if (v25 == 3) then
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\47\51\11\63", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\42\175\11\247\69\27\4\165\59\166", "\105\204\78\203\43\167\55\126")});
						v26:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\171\46\27", "\49\197\202\67\126\115\100\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\82\199\105\166\68\91\50", "\62\87\59\191\73\224\54")});
						v25 = 4;
					end
				end
			end
			v20 = nil;
			v18 = 2;
		end
		if (v18 == 4) then
			if (v4 == LUAOBFUSACTOR_DECRYPT_STR_0("\182\87\162\145\178\90\173\157\191\84\171", "\169\135\98\154")) then
				local v28 = 0;
				local v29;
				while true do
					if (v28 == 1) then
						v29:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\118\41\81", "\168\171\23\68\52\157\83")]="Eat Slimes to Grow HUGE 📜"});
						v29:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\218\112\248\168", "\231\148\17\149\205\69\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\166\206\245\23\204\131\181\206\235\67", "\159\224\199\167\155\55")});
						v28 = 2;
					end
					if (v28 == 2) then
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\242\49\215", "\178\151\147\92")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\173\103\114\51\72\126\204\206\69\40\23", "\26\236\157\44\82\114\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\47\217\87\40\47\214\80", "\59\74\78\181")]=function()
							local v36 = 0;
							local v37;
							while true do
								if (0 == v36) then
									v37 = {10000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\23\212\74\86\186\38\208\78\95\183\22\197\85\72\178\34\212", "\211\69\177\58\58")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\234\119\240\240\219\184\241", "\171\215\133\25\149\137")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\200\198\38\255\253\62\253\78", "\34\129\168\82\154\143\80\156")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\183\183\62\4\92\75\186\145\189\33\10\79\75", "\233\229\210\83\107\40\46")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\224\85\51\196\1\242\82\59\216\54\200\88\55\150\72\129\112\55\219\10\213\71\23\192\0\207\86", "\101\161\34\82\182")):FireServer(unpack(v37));
									break;
								end
							end
						end});
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\198\12\84\251", "\78\136\109\57\158\187\130\226")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\111\169\218\126\30\253\245\126\12\240\235\59", "\145\94\95\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\204\24\217\76\182\254\198", "\215\157\173\116\181\46")]=function()
							local v38 = 0;
							local v39;
							while true do
								if (0 == v38) then
									v39 = {100000};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\7\177\155\254\211\54\181\159\247\222\6\160\132\224\219\50\177", "\186\85\212\235\146")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\234\142\24\251\32\254\87\214", "\56\162\225\118\158\89\142")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\117\11\212\170\48\214\93\9", "\184\60\101\160\207\66")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\3\135\113\179\37\135\79\168\62\144\125\187\52", "\220\81\226\28")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\50\194\131\233\238\244\3\220\140\200\227\221\22\149\207\187\216\194\30\218\150\254\207\209\22\219\150", "\167\115\181\226\155\138")):FireServer(unpack(v39));
									break;
								end
							end
						end});
						v28 = 3;
					end
					if (v28 == 0) then
						if (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\242\48\226\81\114\100\203", "\166\130\66\135\60\27\17")) then
							local v48 = 0;
							local v49;
							while true do
								if (v48 == 1) then
									v49:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\106\75\195\112", "\80\36\42\174\21")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\17\47\58\125\25\45\127", "\26\46\112\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\34\167\120\189\190\70\191", "\212\217\67\203\20\223\223\37")]=function()
										local v52 = 0;
										local v53;
										while true do
											if (v52 == 0) then
												v53 = {999999999999};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\136\136\184\222\179\142\169\198\191\137\155\198\181\159\169\213\191", "\178\218\237\200")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\158\186\232\213\175\165\233\196", "\176\214\213\134")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\221\163\162\209\186\88\88\248", "\57\148\205\214\180\200\54")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\32\248\56\59\98\23\206\33\59\100\19\250\48", "\22\114\157\85\84")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\229\220\18\214\89\197\184\205\197\32\205\71\243\232\137\139\33\193\80\249\188\193\238\5\193\83\226", "\200\164\171\115\164\61\150")):FireServer(unpack(v53));
												break;
											end
										end
									end});
									break;
								end
								if (v48 == 0) then
									v49 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\245\14\64", "\227\222\148\99\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\64\87\251\240\38\95\18\190\204\61\94\93\245\242\122", "\153\83\50\50\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\117\124\18", "\45\61\22\19\124\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\16\21\244\17\99\188\213\27\9\175\77\63\237\149\74\94\166\86\37\224\152\74", "\217\161\114\109\149\98\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\50\61\113\181\97\31\15\54\112\165", "\20\114\64\88\28\220")]=false});
									v49:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\31\0\223\177", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\242\16\249\31\223\167\60\255\30\141\212\20\225\31\141\175\48\250\17\200\167\72\202\51\132", "\122\173\135\125\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\196\6\184\42\61\220", "\168\228\161\96\217\95\81")]="0",[LUAOBFUSACTOR_DECRYPT_STR_0("\239\212\54\72\11\94\200\208\62\76\42\86\201", "\55\187\177\78\60\79")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\207\83\231\68\206\131\38", "\224\77\174\63\139\38\175")]=function(v54)
										local v55 = 0;
										local v56;
										while true do
											if (v55 == 0) then
												v56 = {tonumber(v54)};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\182\68\72\34\141\66\89\58\129\69\107\58\139\83\89\41\129", "\78\228\33\56")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\230\113\188\6\156\222\113\166", "\229\174\30\210\99")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\50\227\146\84\255\51\56\23", "\89\123\141\230\49\141\93")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\193\116\251\3\4\79\192\101\249\30\17\77\246", "\42\147\17\150\108\112")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\46\177\44\109\227\219\31\175\35\76\238\242\10\230\96\63\213\237\2\169\57\122\194\254\10\168\57", "\136\111\198\77\31\135")):FireServer(unpack(v56));
												break;
											end
										end
									end});
									v48 = 1;
								end
							end
						else
							local v50 = 0;
							local v51;
							while true do
								if (v50 == 0) then
									v51 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\8\170\83", "\201\98\105\199\54\221\132\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\30\134\44\11\32\161\249\68\173\46\22\117\153\183\0\140\34\9\124", "\204\217\108\227\65\98\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\192\250\235", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\162\21\46\208\197\165\25\38\199\140\239\66\123\151\142\243\94\123\150\143\249\85", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\52\5\205\252\33\43\47\206\249\45", "\149\84\70\96\160")]=false});
									v51:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\7\0\232", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\92\138\100\21\125\113\200\160\80\197\98\30", "\161\211\51\170\16\122\93\53")});
									break;
								end
							end
						end
						v29 = v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\175\191\45", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\123\93\0", "\83\38\26\52\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\20\40\72", "\38\56\119\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\237\64\215\54\69\246\251\81\210\127\25\188\187\12\142\118\5\167\186\1\143\125", "\54\147\143\56\182\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\147\250\68\214\195\140\208\71\211\207", "\191\182\225\159\41")]=false});
						v28 = 1;
					end
					if (v28 == 3) then
						v29:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\5\19\37\80", "\162\75\114\72\53\235\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\57\87\231\71", "\98\236\92\36\130\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\24\0\182\71\169\182\59", "\80\196\121\108\218\37\200\213")]=function()
							local v40 = 0;
							local v41;
							local v42;
							while true do
								if (v40 == 0) then
									v41 = v3.Character or v3.CharacterAdded:Wait();
									v42 = v41:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\40\102\15\126\69\1\131\4", "\234\96\19\98\31\43\110"));
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
						v29:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\40\30\95\194", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\101\178\240\99\12\3\81\170\240\99\103\47\67\169\181\110\4\98\16\182\244\42\80\110\86\174\231\99\74\43\71\225\224\51\64\47\68\164\181\1\81\41\17\232", "\78\48\193\149\67\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\20\27\134\25\84\60\10", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\229\87\146", "\60\140\200\99\164"),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\241\28\50\134\142\231\5\54\178\130\245\22", "\194\231\148\100\70")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\77\205\175\244\201\69\71", "\168\38\44\161\195\150")]=function(v43)
							local v44 = 0;
							local v45;
							while true do
								if (v44 == 0) then
									v45 = {v43};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\178\249\146\122\57\235\183\2\133\248\177\98\63\250\183\17\133", "\118\224\156\226\22\80\136\214")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\106\225\87\133\91\254\86\148", "\224\34\142\57")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\247\169\209\216\97\255\92\2", "\110\190\199\165\189\19\145\61")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\232\238\122\231\159\194\233\255\120\250\138\192\223", "\167\186\139\23\136\235")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\56\160\145\62\17\188\134\77\87\245\186\8\23\186\156\8\63\163\141\3\14", "\109\122\213\232")):FireServer(unpack(v45));
									break;
								end
							end
						end});
						v28 = 4;
					end
					if (v28 == 4) then
						v29:AddSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\246\175\53", "\80\142\151\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\214\114\73\7", "\44\99\166\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\254\39", "\196\28\151\73\86\83")]=25,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\2\49", "\22\147\99\73\112\226\56\120")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\112\228\244\152\180\97", "\237\216\21\130\149")]=25,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\65\83\80\162", "\62\226\46\63\63\208\169")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\23\86\145\26\0\42\80\241", "\62\133\121\53\227\127\109\79")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\38\21\62\224\211\128\163\29\17", "\194\112\116\82\149\182\206")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\184\73\29\196", "\110\89\200\44\120\160\130"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\194\71\74\65\75\56\70", "\45\203\163\43\38\35\42\91")]=function(v46)
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\226\137\221\58\130\187\71", "\52\178\229\188\67\231\201")).LocalPlayer.Character.Humanoid.WalkSpeed = v46;
						end});
						break;
					end
				end
			elseif (v4 == LUAOBFUSACTOR_DECRYPT_STR_0("\118\24\7\93\164\8\114\117\21\5", "\67\65\33\48\100\151\60")) then
				local v32 = 0;
				while true do
					if (v32 == 1) then
						wait(0.5);
						break;
					end
					if (v32 == 0) then
						v19();
						v20();
						v32 = 1;
					end
				end
			end
			break;
		end
		if (v18 == 0) then
			if (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\207\245\171\213\250\202\234", "\147\191\135\206\184")) then
				local v30 = 0;
				local v31;
				while true do
					if (v30 == 0) then
						v31 = math.random(1, 9);
						if (v31 == 1) then
							Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\183\39\179\129\246\92\166\141\46\175\194\217\71\187\139\38", "\210\228\72\198\161\184\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\30\76\255\28\124\142\6\91\246\29\122\219\59\9\198\3\118\220\108\9", "\174\86\41\147\112\19") .. v3.Name .. ", Welcome to Sou Hub!👀", LUAOBFUSACTOR_DECRYPT_STR_0("\73\2\149\10\54\28\20\191\82\4\215\68\106\91\69\243\8\83\217\94\124\86\73", "\203\59\96\237\107\69\111\113"), 5);
						elseif (v31 == 2) then
							Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\23\25\185\161\31\255\195\45\16\165\226\48\228\222\43\24", "\183\68\118\204\129\81\144"), LUAOBFUSACTOR_DECRYPT_STR_0("\38\168\124\232\4\194\62\191\117\233\2\151\3\237\69\247\14\144\84\237", "\226\110\205\16\132\107") .. v3.Name .. ", What you want to do!👀", LUAOBFUSACTOR_DECRYPT_STR_0("\249\193\248\216\82\248\198\244\208\69\177\140\175\141\21\179\144\179\141\20\178\154\184", "\33\139\163\128\185"), 5);
						else
							Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\100\87\17\158\121\87\16\215\81\81\7\223\67\81\11\208", "\190\55\56\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\126\170\48\18\28\163", "\147\54\207\92\126\115\131") .. v3.Name .. ", Welcome to Sou Hub😮", LUAOBFUSACTOR_DECRYPT_STR_0("\31\51\45\124\30\109\8\37\60\121\87\49\66\101\97\37\94\45\89\100\108\36\85", "\30\109\81\85\29\109"), 5);
						end
						break;
					end
				end
			elseif (v0 == LUAOBFUSACTOR_DECRYPT_STR_0("\253\112\90", "\156\159\17\52\214\86\190")) then
				local v33 = 0;
				while true do
					if (1 == v33) then
						v3:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\151\224\168\252\175\253\184\252\172\238\179\178\171\235\231\252", "\220\206\143\221") .. v0);
						return;
					end
					if (v33 == 0) then
						Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\181\114\56\87\246\195\198\143\123\36\20\217\216\219\137\115", "\178\230\29\77\119\184\172"), LUAOBFUSACTOR_DECRYPT_STR_0("\204\177\31\91\118\234\240\254\8\26\121\246\240\186\80\91", "\152\149\222\106\123\23") .. v0, LUAOBFUSACTOR_DECRYPT_STR_0("\207\36\238\66\166\206\35\226\74\177\135\105\185\23\225\133\117\165\23\224\132\127\174", "\213\189\70\150\35"), 5);
						wait(1);
						v33 = 1;
					end
				end
			end
			v19 = nil;
			v18 = 1;
		end
		if (v18 == 3) then
			v20();
			wait(0.5);
			v18 = 4;
		end
	end
end
local v5 = {LUAOBFUSACTOR_DECRYPT_STR_0("\30\0\44\80\26\13\35\92\23\3\37", "\104\47\53\20"),LUAOBFUSACTOR_DECRYPT_STR_0("\244\21\214\69\239\91\242\24\213\73", "\111\195\44\225\124\220")};
function ez()
	local v21 = 0;
	while true do
		if (v21 == 1) then
			v2:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\246\71\13\118", "\203\184\38\96\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\114\112\79", "\174\89\19\25\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\17\93\64", "\107\79\114\50\46\151\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\164\173\40\153\42\178\212\48\162\239\102\197\109\227\152\106\245\225\124\211\96\239", "\160\89\198\213\73\234\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\99\177\243\204\93\124\155\240\201\81", "\165\40\17\212\158")]=false});
			break;
		end
		if (v21 == 0) then
			createUpdateTab();
			listGame();
			v21 = 1;
		end
	end
end
local v6 = false;
function Start()
	if table.find(v5, v4) then
		Load(v4);
	elseif v6 then
		Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\214\214\29\115\21\240\201\24\60\52\241", "\70\133\185\104\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\44\64\72\38\198\68", "\169\100\37\36\74") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\76\199\145\95\21\199\145\83\18\142\178\68\64\161\173\69\14\131\226\99\15\138\167\16\34\146\165", "\48\96\231\194"), LUAOBFUSACTOR_DECRYPT_STR_0("\218\88\22\44\10\203\170\151\193\94\84\98\86\140\251\219\155\9\90\120\64\129\247", "\227\168\58\110\77\121\184\207"), 5);
	else
		local v27 = 0;
		while true do
			if (v27 == 1) then
				Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\72\51\170\0\130\206\97\181\116\46\171", "\197\27\92\223\32\209\187\17"), LUAOBFUSACTOR_DECRYPT_STR_0("\43\90\207\247\12\31", "\155\99\63\163") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\206\145\128\152\173\139\194\254\177\136\183\196\164\195\164\136\249\183\150\200\173\136", "\228\226\177\193\237\217"), LUAOBFUSACTOR_DECRYPT_STR_0("\38\178\59\231\39\163\38\242\61\180\121\169\123\228\119\190\103\227\119\179\109\233\123", "\134\84\208\67"), 5);
				ez();
				break;
			end
			if (v27 == 0) then
				Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\32\163\147\28\32\185\150\76\28\190\146", "\60\115\204\230"), LUAOBFUSACTOR_DECRYPT_STR_0("\207\63\231\124\232\122", "\16\135\90\139") .. v3.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\24\52\33\50\67\81\56\122\123\18\115\125\65\104\68\123\20\39\75\80", "\24\52\20\102\83\46\52"), LUAOBFUSACTOR_DECRYPT_STR_0("\214\45\57\37\28\215\42\53\45\11\158\96\110\112\91\156\124\114\112\90\157\118\121", "\111\164\79\65\68"), 5);
				wait(5);
				v27 = 1;
			end
		end
	end
end
Start();

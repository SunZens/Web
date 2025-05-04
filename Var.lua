repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer.Character:FindFirstChild('FULLY_LOADED_CHAR')
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local function httpRequest(data)
    if syn and syn.request then
        return syn.request(data)
    elseif http and http.request then
        return http.request(data)
    elseif fluxus and fluxus.request then
        return fluxus.request(data)
    elseif request then
        return request(data)
    else
        warn("❌ request")
        return nil
    end
end

while wait() do
    if getgenv().Owner then
        if game:GetService("Players"):FindFirstChild(getgenv().Owner) then
            if getgenv().Executed then
                print("Already Executed")
            else
                getgenv().Executed = true
                getgenv()._=
                "Join discord.gg/msgabv2t9Q | discord.gg/stando to get latest update ok bai OwO_ | If you pay for this script you get scammed, this script is completely free ok"
                --[[
                
                To get started in "getgenv().Owner" put the username you want to control.
                
                !! \\ MAKE SURE THE OWNER AND STAND ACCOUNT ARE IN SAME SERVER // !!
                
                --// Example \\
                Before --> getgenv().Owner = "OWNER_USERNAME_HERE"
                After  --> getgenv().Owner = "XK5NG"
                
                ^^ --> This is just the example don't put the username herez]]
                
                getgenv().Configuration = {
                ['Msg'] = 'YoungQ', --When You Say [/e msg] It Makes All The Alts Say That Message
                ['CrewID'] = 35301305, --Must join group
                ['Attack'] = 'Heavy', --[Heavy | Light] Heavy = Super Punch Light = Spam Punch
                ['TPMode'] = 'Cart', --[Knock | Cart] --Teleport mode
                ['GunMode'] = 'Rifle', --[LMG | Rifle | Aug] --Self explain
                ['FlyMode'] = 'Glide', --[Glide | FlyV1 | FlyV2 | Hover | Heaven ]
                ['Position'] = 'UpLeft', --[Back | Left | Right | Mid | UpMid | UpLeft | UpLeft | Walk ]
                ['Resolver'] = false, --[true | false] Turn On Or Off Resolver If Someone Using Anti Lock [This only applied to attack only for guns it's already have resolver]
                ['ChatCmds'] = true, --[true | false] if true stand talks to you
                ['AutoMask'] = true, --[true | false] Auto Buy Mask When The Stand Respawn
                ['MaskMode'] = 'Skull', --[Surgeon | Paintball | Skull | Pumpkin | Hockey | Ninja | Riot | Breathing] The Stand Will Buy The Mask You Selected
                ['AntiStomp'] = true, --[true | false] The Stand Will Cannot Be Stomped Or Grabbed
                ['StandMode'] = 'Star Platinum : OverHeaven', --[Star Platinum : OverHeaven | Star Platinum: The World | Star Platinum, Za Warudo! | TheWorld | Cmoon | King Crimson | Killer Queen | MIH | D4C]
                ['Smoothing'] = true, --[true | false] if true stand will follow you smoothly
                ['AttackMode'] = 'Sky', --[Sky | Under] If [Sky] The Stand Will Attack Infront Of Target And If [Under] The Stand Will Attack In Underground
                ['CustomName'] = 'YG Black', --Custom Name Text Default Is [Master] Example Of it 'Im Here, Master'
                ['Hidescreen'] = true, --[true | false] If you set it to true you will see white blank screen [Save up gpu usage]
                ['SummonPoses'] = 'Pose3', --[false | Pose1 | Pose2 | Pose3]
                ['LowGraphics'] = true, --[true | false] Turns graphics down so your stand doesnt lag too much
                ['CustomPrefix'] = '.', --[ ! | / | . | ? | > | < | $ | ; | : ] Custom target prefix
                ['CustomSummon'] = 'Arise!', --Custom [Summon!] Text
                ['AutoPrediction'] = false, --[true | false] Turn On Or Off Auto Prediction 
                ['AttackDistance'] = 75, --Attack distance for "Attack!, Stab!, Gkill!" max distance
                ['AutoSaveLocation'] = 'Downhill_Rooftop', --[Downhill_Rooftop | Uphill_Rooftop | DA_FURNITURE ]
                ['AttackPrediction'] = 0.34, --Prediction For Attack Or Targetting
                ['AttackAutoPrediction'] = 0.23, --Prediction For Attack Or Targetting
                --//    ! Sounds !     \\--
                --\\ MUST HAVE BOOMBOX //--
                ['Sounds'] = true, --[true | false]
                ['CustomSong'] = 123456, --Enter A Song ID And Say 'Song!'
                ['SummonMusic'] = true, --[true | false]
                ['SummonMusicID'] = 'Default' -- Enter a Sound ID Put [Default] If You Would Like The Default Sound
                }loadstring(game:HttpGet("https://xk5ng.github.io/V4.8"))()
            end
        else
            local response = httpRequest({
                Url = "http://127.0.0.1:5000/valiable-system",
                Method = "POST",
                Headers = {["Content-Type"] = "application/json"},
                Body = game:GetService("HttpService"):JSONEncode({
                    name = game.Players.LocalPlayer.Name,
                })
            })
            if response then
                local body = response.Body or response.Data or response.Content or ""
                if body and body ~= "" then
                    local jsonData = game:GetService("HttpService"):JSONDecode(body)
                    if jsonData.job_id_customer and jsonData.job_id_customer ~= "" then
                        if game.JobId ~= jsonData.job_id_customer then
                            if queueteleport then
                                queueteleport([[
                                    loadstring(game:HttpGet("https://raw.githubusercontent.com/SunZens/Web/refs/heads/main/Var.lua"))()
                                ]])
                            end
                            repeat wait()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
                                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, jsonData.job_id_customer, game.Players.LocalPlayer)
                            until game.JobId == jsonData.job_id_customer
                        end
                    else
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
                    end
                else
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
            end
        end
    else
        repeat wait()
            local response = httpRequest({
                Url = "http://127.0.0.1:5000/valiable-system",
                Method = "POST",
                Headers = {["Content-Type"] = "application/json"},
                Body = game:GetService("HttpService"):JSONEncode({
                    name = game.Players.LocalPlayer.Name,
                })
            })
            if response then
                local body = response.Body or response.Data or response.Content or ""
                if body and body ~= "" then
                    local jsonData = game:GetService("HttpService"):JSONDecode(body)
                    if jsonData.job_id_customer and jsonData.job_id_customer ~= "" then
                        if game.JobId ~= jsonData.job_id_customer then
                            if queueteleport then
                                queueteleport([[
                                    loadstring(game:HttpGet("https://raw.githubusercontent.com/SunZens/Web/refs/heads/main/Var.lua"))()
                                ]])
                            end
                            repeat wait()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
                                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, jsonData.job_id_customer, game.Players.LocalPlayer)
                            until game.JobId == jsonData.job_id_customer
                        end
                    else
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
                    end
                else
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
            end
        until getgenv().Owner
        local response = httpRequest({
            Url = "http://127.0.0.1:5000/valiable-system",
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode({
                name = game.Players.LocalPlayer.Name,
            })
        })
        if response then
            local body = response.Body or response.Data or response.Content or ""
            if body and body ~= "" then
                local jsonData = game:GetService("HttpService"):JSONDecode(body)
                if jsonData.job_id_customer and jsonData.job_id_customer ~= "" then
                    if game.JobId ~= jsonData.job_id_customer then
                        if queueteleport then
                            queueteleport([[
                                loadstring(game:HttpGet("https://raw.githubusercontent.com/SunZens/Web/refs/heads/main/Var.lua"))()
                            ]])
                        end
                        repeat wait()
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
                            game:GetService("TeleportService"):TeleportToPlaceInstance(2788229376, jsonData.job_id_customer, game.Players.LocalPlayer)
                        until game.JobId == jsonData.job_id_customer
                    end
                else
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
            end
        else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
        end
    end
end

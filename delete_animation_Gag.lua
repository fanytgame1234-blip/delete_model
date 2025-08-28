-- by fan_game1234
-- Khi execute sẽ xóa ngay và chặn luôn animation mới

local bannedAnimations = {
    -- ====== Danh sách animation (Phần 1) ======
    ["rbxassetid://91576984813067"] = true, -- VenusHead
    ["rbxassetid://125216311814451"] = true, -- VenusClose
    ["http://www.roblox.com/asset/?id=180435571"] = true, -- Animation1
    ["http://www.roblox.com/asset/?id=180435792"] = true, -- Animation2
    ["http://www.roblox.com/asset/?id=180426354"] = true, -- WalkAnim
    ["http://www.roblox.com/asset/?id=180426354"] = true, -- RunAnim
    ["http://www.roblox.com/asset/?id=125750702"] = true, -- JumpAnim
    ["http://www.roblox.com/asset/?id=180436334"] = true, -- ClimbAnim
    ["http://www.roblox.com/asset/?id=182393478"] = true, -- ToolNoneAnim
    ["http://www.roblox.com/asset/?id=180436148"] = true, -- FallAnim
    ["http://www.roblox.com/asset/?id=178130996"] = true, -- SitAnim
    ["rbxassetid://93672080279456"] = true, -- TwoHandedFruitAnimation
    ["rbxassetid://113938302810353"] = true, -- Hold_ANIM
    ["rbxassetid://79090752371061"] = true, -- Dig
    ["rbxassetid://107329390413456"] = true, -- Idle
    ["rbxassetid://102563616344731"] = true, -- Walk
    ["rbxassetid://134977081669984"] = true, -- Nap
    ["rbxassetid://83295922750675"] = true, -- Spray
    ["rbxassetid://97227811718907"] = true, -- Stomp
    ["rbxassetid://88925460794340"] = true, -- Grab
    ["rbxassetid://72546996124938"] = true, -- Roar
    ["rbxassetid://84414872708259"] = true, -- Chomp
    ["rbxassetid://80727277771853"] = true, -- Croak
    ["rbxassetid://133703453502493"] = true, -- DigDown
    ["rbxassetid://121766489548412"] = true, -- DigUp
    ["rbxassetid://79242117131419"] = true, -- DigWalk
    ["rbxassetid://129273511257444"] = true, -- Curl
    ["rbxassetid://117781114613016"] = true, -- CurlLoop
    ["rbxassetid://109133236372785"] = true, -- Nurse
    ["rbxassetid://86780792661745"] = true, -- FlyUp
    ["rbxassetid://127565417132945"] = true, -- FlyDown
    ["rbxassetid://101921942472323"] = true, -- Fly

    -- ====== Danh sách animation (Phần 2) ======
    ["rbxassetid://116488925740219"] = true, -- Zombify
    ["rbxassetid://129936067167803"] = true, -- Think
    ["rbxassetid://134822125408510"] = true, -- Pollinate
    ["rbxassetid://98706475150631"] = true, -- Spin
    ["rbxassetid://96711475979761"] = true, -- Dance
    ["rbxassetid://124361906685789"] = true, -- Sing
    ["rbxassetid://130312642230377"] = true, -- Sting
    ["rbxassetid://78159935807533"] = true, -- Flutter
    ["rbxassetid://134605964082557"] = true, -- FlyUp
    ["rbxassetid://83962429916387"] = true, -- FlyDown
    ["rbxassetid://127159882859371"] = true, -- Fly
    ["rbxassetid://91055081440424"] = true, -- Fly
    ["rbxassetid://95157399139294"] = true, -- FlyUp
    ["rbxassetid://73984357385505"] = true, -- FlyDown
    ["rbxassetid://121826970402902"] = true, -- Fly
    ["rbxassetid://73252236017081"] = true, -- Flip
    ["rbxassetid://73252236017081"] = true, -- Splash
    ["rbxassetid://88491356868486"] = true, -- Mimicry
    ["rbxassetid://138997396286329"] = true, -- FlyUp
    ["rbxassetid://85619916722935"] = true, -- FlyDown
    ["rbxassetid://115590448491198"] = true, -- Fly
    ["rbxassetid://135198525108269"] = true, -- Stand
    ["rbxassetid://77819415999388"] = true, -- Fan
    ["rbxassetid://81383129783733"] = true, -- Run
    ["rbxassetid://78664346199009"] = true, -- Stand
    ["rbxassetid://128984978404038"] = true, -- FlyUp
    ["rbxassetid://132437010151719"] = true, -- FlyDown
    ["rbxassetid://77588800745317"] = true, -- Fly
    ["rbxassetid://125337589947122"] = true, -- Spin
    ["rbxassetid://73129360687512"] = true, -- Roar
    ["rbxassetid://125052026844689"] = true, -- Eat
    ["rbxassetid://138329634865162"] = true, -- Ram
    ["rbxassetid://90619440091814"] = true, -- FlyUp
    ["rbxassetid://72442127930829"] = true, -- Fly
    ["rbxassetid://112727066486333"] = true, -- FlyDown
    ["rbxassetid://80209919547886"] = true, -- Flap
    ["rbxassetid://127255335832645"] = true, -- Eat
    ["rbxassetid://77791681826170"] = true, -- Roar
    ["rbxassetid://111261284228108"] = true, -- Crowbar
    ["rbxassetid://104638650996247"] = true, -- Frill
    ["rbxassetid://139646038928747"] = true, -- Idle
    ["rbxassetid://118226081881409"] = true, -- Mischief
    ["rbxassetid://140328259465565"] = true, -- Idle
    ["rbxassetid://110611165212247"] = true, -- Play
    ["rbxassetid://117539098356702"] = true, -- Walk
    ["rbxassetid://123861984476103"] = true, -- Dig
    ["rbxassetid://139274190945819"] = true, -- Bathe
    ["rbxassetid://139754557142744"] = true, -- Splash
    ["rbxassetid://134174349673384"] = true, -- Spin
    ["rbxassetid://118194317796215"] = true, -- Magic
    ["rbxassetid://128470225629255"] = true, -- Wings
    ["rbxassetid://128516431183586"] = true, -- Touchdown
    ["rbxassetid://130729081917443"] = true, -- Spit
    ["rbxassetid://107661328835497"] = true, -- Eat
    ["rbxassetid://77266028980045"] = true, -- Wave
    ["rbxassetid://119500223932623"] = true, -- Dance
    ["rbxassetid://124131487183889"] = true, -- Play
    ["rbxassetid://118665265727454"] = true, -- Stir
    ["rbxassetid://110354352996158"] = true, -- Oil
    ["rbxassetid://77696451565631"] = true, -- Stir
    ["rbxassetid://94539901132548"] = true, -- Pee
    ["rbxassetid://73137046063069"] = true, -- Oil
    ["rbxassetid://83404252163680"] = true, -- Boil
    ["rbxassetid://135398843978278"] = true, -- Walk
    ["rbxassetid://81345699063258"] = true, -- Overgrowth
    ["rbxassetid://87272049026604"] = true, -- Bless
    ["rbxassetid://137824843541525"] = true, -- Thump
    ["rbxassetid://85720164737878"] = true, -- Tinker
    ["rbxassetid://108309610954809"] = true, -- Lay

    -- ====== Danh sách animation (Phần 3) ======
    ["rbxassetid://89196628080288"] = true, -- Roar
    ["rbxassetid://130627940472505"] = true, -- Walk
    ["rbxassetid://130312642230377"] = true, -- Sting
    ["rbxassetid://74701105582146"] = true, -- Pollinate
    ["rbxassetid://98147466443302"] = true, -- FlyUp
    ["rbxassetid://73604362970347"] = true, -- FlyDown
    ["rbxassetid://140461981910802"] = true, -- Fly
    ["rbxassetid://103524228797362"] = true, -- Flaunt
    ["rbxassetid://81113184777603"] = true, -- Gnoming
    ["rbxassetid://129726151712321"] = true, -- Sacrifice
    ["rbxassetid://88580869954392"] = true, -- Sammy_Slam
    ["rbxassetid://76834240050678"] = true, -- Write
    ["rbxassetid://103031717494286"] = true, -- Pull
    ["rbxassetid://133671468586075"] = true, -- Bean1
    ["rbxassetid://81399816692518"] = true, -- Bean2
    ["rbxassetid://96135203226390"] = true, -- Bean3
    ["rbxassetid://84055605764101"] = true, -- Bean4
    ["rbxassetid://125198650296805"] = true, -- Bean5
    ["rbxassetid://75570545314283"] = true, -- Camera
    ["rbxassetid://81477003913214"] = true, -- Sammy_Idle
    ["rbxassetid://89506594131441"] = true, -- Sammy_StampedeStart
    ["rbxassetid://137846212003828"] = true, -- Jandel_FlyingIn
    ["rbxassetid://112931725037141"] = true, -- Jandel_Idle
    ["rbxassetid://103710667257002"] = true, -- LaserFocus
    ["rbxassetid://78233863273575"] = true, -- Jandel_Attack
    ["rbxassetid://138708859231967"] = true, -- Sammy_HitImpact
    ["rbxassetid://104716740336056"] = true, -- Jandel_HammerAttack
    ["rbxassetid://78233863273575"] = true, -- LaserAttack
    ["rbxassetid://118850660285332"] = true, -- Sammy_Zap
    ["rbxassetid://107464203872020"] = true, -- Sammy_Stomp
    ["rbxassetid://94525884897324"] = true, -- Jandel_Stomp
    ["rbxassetid://102585323543837"] = true, -- Sammy_Hammered
    ["rbxassetid://84279572766368"] = true, -- Mash
    ["rbxassetid://126349553033166"] = true, -- Idle
    ["rbxassetid://82349310247697"] = true, -- Zeus_Arrow
    ["rbxassetid://71994488913877"] = true, -- Jandel_MoneyGun
    ["rbxassetid://114365488155591"] = true, -- RunAnimation_self
    ["rbxassetid://120090598355852"] = true, -- RunAnimation
    ["rbxassetid://107780353562916"] = true, -- Anim
    ["rbxassetid://107475077745825"] = true, -- Hovering Idle
    ["rbxassetid://111568248713085"] = true, -- Flying
    ["rbxassetid://110354352996158"] = true, -- Tweaking
    ["rbxassetid://80301177605548"] = true, -- Zeus_Arrow
}

-- ====== Logic xóa & chặn animation ======
local function stopIfBanned(track)
    local anim = track.Animation
    if anim and bannedAnimations[anim.AnimationId] then
        print("Xóa animation:", anim.Name, "| ID:", anim.AnimationId)
        track:Stop()
    end
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:FindFirstChildOfClass("Animator")

if animator then
    for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
        stopIfBanned(track)
    end
    animator.AnimationPlayed:Connect(function(track)
        stopIfBanned(track)
    end)
end
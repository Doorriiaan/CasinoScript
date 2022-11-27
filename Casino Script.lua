util.require_natives(1663599433)
local loop = false

util.toast("FUCK SHARKCARDS!!! Casino Script by chinesus")

menu.action(menu.my_root(), "To the casino!", {"tpcasino"}, "Duh", function(click_type)
    menu.trigger_commands("posx 925")
    menu.trigger_commands("posy 47")
    menu.trigger_commands("posz 81")
end)

menu.action(menu.my_root(), "To the diamond slot!", {"tpslot"}, "Shine bright!", function(click_type)
    math.randomseed()
    math.random()
    math.random()
    math.random()
    local r = math.random(1,3)
    if(r == 1) then
        menu.trigger_commands("posx 1114.")
        menu.trigger_commands("posy 239")
        menu.trigger_commands("posz -49")
    elseif (r==2) then
        menu.trigger_commands("posx 1116")
        menu.trigger_commands("posy 228")
        menu.trigger_commands("posz -49")
    elseif (r==2) then
        menu.trigger_commands("posx 1137")
        menu.trigger_commands("posy 253")
        menu.trigger_commands("posz -51")
    end
end)

menu.action(menu.my_root(), "To the cashier!", {"tpcashier"}, "Go get paid for your hard work!", function(click_type)
    menu.trigger_commands("posx 1116")
    menu.trigger_commands("posy 220")
    menu.trigger_commands("posz -49")
end)


menu.action(menu.my_root(), "Casino Loop", {"startcasinoloop"}, "Automatically wins and loses the slotmachines: This way you won't trigger the casino cooldown. Autoclicker is suggested for AFK money", function(click_type)
    loop = not loop
    util.show_corner_help("Welcome to the casino loop!")
    PAD._SET_CONTROL_NORMAL(2, 208, 1) --Thanks to Heist Control
    
    while(loop) do
        menu.trigger_commands("rigslotmachines jackpot")
        SET_INT_LOCAL("CASINO_SLOTS", 1631, 8)
        for i=1,100 do 
            util.show_corner_help("Spin to win")
            util.yield(100)
        end
        menu.trigger_commands("rigslotmachines loss")
        SET_INT_LOCAL("CASINO_SLOTS", 1631, 8)
        for i=1,100 do 
            util.show_corner_help("Spin to lose")
            util.yield(100)
        end
    end
    util.toast("Bye bye! Hope you made lots of money!")
end)

menu.action(menu.my_root(), "Roulette", {"roulette"}, "Takes you to the roulette table and rigs it to 1. Bet 50k on 1st 12 and 5k on 1", function(click_type)
    menu.trigger_commands("posx 1133")
    menu.trigger_commands("posy 263")
    menu.trigger_commands("posz -51")
    menu.trigger_commands("rigroulette 1")
end)

    menu.action(menu.my_root(), "~~Random Teleport~~", {"randomtp"}, "*Use at own risk* May spawn you under the map or other weird shit", function(click_type)
        local x,y,z,distToGround, currentHeight
        math.randomseed()
        math.random()
        math.random()
        math.random()
        x = math.random(-3430, 4130)
        y = math.random(-3560, 8000)
        menu.trigger_commands("posx "..x)
        menu.trigger_commands("posy "..y)
        menu.trigger_commands("posz "..ENTITY.GET_ENTITY_HEIGHT_ABOVE_GROUND(players.user_ped()))
end)
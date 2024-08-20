local enums = {
    triggers = {
        altar = "DRLG_Generic_Boss_Trigger",
        dungeon_entrance_1 = "Portal_Dungeon_Generic",
        dungeon_entrance_2 = "Portal_Cellar_Flat"
    },
    positions = {
        boss_room = {
            ["Boss_WT4_S2VampireLord"] = vec3:new(-10.556, -10.419, -3.120),
            ["Boss_WT4_Duriel"] = vec3:new(-3.616, -2.309, -3.689),
            ["Boss_WT4_Andariel"] = vec3:new(-8.999, -9.581, -6.216),
            ["Boss_WT3_PenitentKnight"] = vec3:new(1.525, 1.045, 2),
            ["Boss_WT3_Varshan"] = vec3:new(-2.884, -2.762, -3.266)
        }
    }
}

enums.positions.getBossRoomPosition = function(world_name)
    local pos = enums.positions.boss_room[world_name]
    if pos == nil then
        return vec3:new(0,0,0)
    end
    return pos
end

return enums
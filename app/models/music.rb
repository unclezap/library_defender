class Music < Monster

    def self.create_for_level(level)
        x = level.level_number * 10

        x.times do
            music = Music.create(monster_name: "Music", health: 1, attack_damage: 3)
            level.monsters << music
        end

    end
end

class Monkey < Monster

    def self.create_for_level(level)
        x = level.level_number + 3

        x.times do
            monkey = Monkey.create(monster_name: "Monkey", health: 7, attack_damage: 5)
            level.monsters << monkey
        end

    end
end

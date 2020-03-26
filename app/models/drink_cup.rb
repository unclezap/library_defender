class DrinkCup < Monster

    def self.create_for_level(level)
        x = level.level_number

        x.times do
            drink_cup = DrinkCup.create(monster_name: "Loud Child", health: 25, attack_damage: 50)
            level.monsters << drink_cup
        end

    end
end

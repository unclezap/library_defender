class LoudChild < Monster

    def self.create_for_level(level)
        x = level.level_number + 1

        x.times do
            loud_child = LoudChild.create(monster_name: "Loud Child", health: 5, attack_damage: 1)
            level.monsters << loud_child
        end

    end
end

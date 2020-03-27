class Level < ApplicationRecord
    belongs_to :game
    has_many :monsters
    has_many :defenders

    def self.create_with_monsters(game)
        # game.current_level += 1
        # game.save
        @level = Level.create(level_number: game.current_level)
        game.levels << @level

        if @level.level_number >= 1
            LoudChild.create_for_level(@level)
        end

        if @level.level_number >= 2
            Monkey.create_for_level(@level)
        end

        if @level.level_number >= 3
            Music.create_for_level(@level)
        end

        if @level.level_number >= 4
            DrinkCup.create_for_level(@level)
        end
        
        return @level
    end

end

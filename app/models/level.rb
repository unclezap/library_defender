class Level < ApplicationRecord
    belongs_to :game
    has_many :monsters
    has_many :defenders

    def self.create_with_monsters(game)
        
        @level = Level.create(level_number: game.current_level)
        game.levels << @level

        if @level.level_number === 1
            LoudChild.create_for_level(@level)
        end
    end
end

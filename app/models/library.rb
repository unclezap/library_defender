class Library < ApplicationRecord
    belongs_to :game

    def self.create_for_game(game)
        library = Library.create(health: 1000)
        game.library = library
    end
end

class Game < ApplicationRecord
    belongs_to :user
    has_one :library
    has_many :levels

    def self.create_with_everything(user)
        @game = Game.create(money: 50, current_level: 1)
        user.games << @game
        Library.create_for_game(@game)
        Level.create_with_monsters(@game)
        return @game
    end

end

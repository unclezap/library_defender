class Level < ApplicationRecord
    belongs_to :game
    has_many :monsters
    has_many :defenders
end

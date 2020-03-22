class Game < ApplicationRecord
    belongs_to :user
    has_one :library
    has_many :levels
end

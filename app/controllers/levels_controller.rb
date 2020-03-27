class LevelsController < ApplicationController
    def index
        levels = Level.all
        render json: levels
    end
    
    def show
        level = Level.find_by(id: params[:id])
        render json: level, include: [:monsters]
    end

    def create
        byebug
        current_game = Game.find_by(id: params[:game][:id])
        current_game.current_level += 1
        level = Level.create_with_monsters(current_game)
        byebug
        render json: level, include: [:monsters]
    end
end

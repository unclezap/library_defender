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
        @current_game = Game.find_by(id: params[:thisGame][:id])
        @current_game.current_level += 1
        byebug
        level = Level.create_with_monsters(@current_game)
        byebug
        render json: level, include: [:monsters]
    end
end

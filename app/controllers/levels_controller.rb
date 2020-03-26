class LevelsController < ApplicationController
    def index
        levels = Level.all
        render json: levels
    end
    
    def show
        level = Level.find_by(id: params[:id])
        render json: level, include: [:monsters]
    end
end

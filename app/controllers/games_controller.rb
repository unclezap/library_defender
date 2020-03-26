class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end
    
    def show
        game = Game.find_by(id: params[:id])
        render json: game, include: [:levels, :library]
    end
   
    def create
        this_user = User.find_by(id: params[:thisUser][:id])
        new_game = Game.create_with_everything(this_user)
        render json: new_game
    end
end

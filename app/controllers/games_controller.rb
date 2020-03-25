class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end
    
    def show
        game = Game.find_by(id: params[:id])
        render json: game
    end
   
    def create
        new_game = Game.create
        this_user = User.find_by(id: params[:thisUser][:id])
        this_user.games << new_game
        render json: new_game
    end
end

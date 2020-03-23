class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end
    
    def show
        game = Game.find_by(id: params[:id])
        render json: game
    end
    i am interfering with the game
    i am a bug
    whats up
    i am conflict
    i dont like you
end

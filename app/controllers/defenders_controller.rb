class DefendersController < ApplicationController
    def index
        defenders = Defender.all
        render json: defenders
    end
    
    def show
        defender = Defender.find_by(id: params[:id])
        render json: 'defender'
    end
    i am conflict
end

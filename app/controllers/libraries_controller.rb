class LibrariesController < ApplicationController

    def show
        library = Library.find_by(id: params[:id])
        render json: library
    end
end

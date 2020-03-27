class LibrariesController < ApplicationController

    def show
        library = Library.find_by(id: params[:id])
        render json: library
    end

    def destroy
        updated_library = Library.find_by(id: params[:thisLibrary][:id])
        updated_library.health = params[:currentHealth]
        render json: updated_library
    end
end

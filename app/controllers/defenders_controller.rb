class DefendersController < ApplicationController
    def index
        old_librarian = OldLibrarian.create_with_stats
        junior_librarian = JuniorLibrarian.create_with_stats
        angry_librarian = AngryLibrarian.create_with_stats
        librarian_berserker = LibrarianBerserker.create_with_stats

        render json: {librarian1: old_librarian, librarian2: junior_librarian, librarian3: angry_librarian, librarian4: librarian_berserker}
    end
    
    def show
        defender = Defender.find_by(id: params[:id])
        render json: 'defender'
    end
    
end

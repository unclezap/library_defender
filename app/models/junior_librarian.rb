class JuniorLibrarian < Defender
    def self.create_with_stats
        junior_librarian = JuniorLibrarian.create(defender_name: "Junior Librarian", cost: 30, attack_damage: 1)
        return junior_librarian
    end
end

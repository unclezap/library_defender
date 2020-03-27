class OldLibrarian < Defender
    def self.create_with_stats
        old_librarian = OldLibrarian.create(defender_name: "Old Librarian", cost: 25, attack_damage: 1)
    end
end

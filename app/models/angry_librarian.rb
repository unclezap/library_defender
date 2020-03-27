class AngryLibrarian < Defender
    def self.create_with_stats
        angry_librarian = AngryLibrarian.create(defender_name: "Angry Librarian", cost: 35, attack_damage: 3)
    end
end

class LibrarianBerserker < Defender
    def self.create_with_stats
        librarian_berserker = LibrarianBerserker.create(defender_name: "Librarian Berserker", cost: 50, attack_damage: 25)
    end
end

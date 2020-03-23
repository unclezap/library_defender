# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
aidan = User.create(name: "Aidan")
newgame = Game.create(user_id: 1, money: 50, current_level: 1)
newlibrary = Library.create(health: 1000, game_id: 1)
newmonster = LoudChild.create(health: 50, attack_damage: 30, img: "wafa")
newdefender = JuniorLibrarian.create(attack_damage: 30, cost: 50)
level1 = Level.create(level_number: 1, game_id: 1)
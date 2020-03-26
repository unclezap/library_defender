# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
aidan = User.create(name: "Aidan")

newGame = Game.create(user_id: 1, money: 50, current_level: 1)
aidan.games << newGame

newLibrary = Library.create(health: 1000)
newGame.library = newLibrary

levelOne = Level.create(level_number: 1)
levelTwo = Level.create(level_number: 2)
levelThree = Level.create(level_number: 3)
newGame.levels << levelOne
newGame.levels << levelTwo
newGame.levels << levelThree

newMonster = LoudChild.create(monster_name: "Loud Child", health: 50, attack_damage: 30, img: "wafa")
levelOne.monsters << newMonster

newMonkey = Monkey.create(monster_name: "Monkey", health: 4, attack_damage: 5)
levelOne.monsters << newMonkey

newDefender = JuniorLibrarian.create(defender_name: "Junior Librarian", attack_damage: 30, cost: 50)
levelOne.defenders << newDefender

zeb = User.create(name: "Zeb")

david = User.create(name: "David")

john = User.create(name: "John")

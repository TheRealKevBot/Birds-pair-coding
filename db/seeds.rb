# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bird.destroy_all
Tree.destroy_all

tree_a = Tree.create(name: "Redwood", age: 200)
tree_b = Tree.create(name: "Oak", age: 80)
tree_c = Tree.create(name: "Maple", age: 150)
tree_d = Tree.create(name: "Koa", age: 165)

bird_a = Bird.create(name: "Black-Capped Chickadee", species: "Poecile Atricapillus", tree: tree_b)
bird_b = Bird.create(name: "Grackle", species: "Quiscalus Quiscula", tree: tree_a)
bird_c = Bird.create(name: "Common Starling", species: "Sturnus Vulgaris", tree: tree_b)
bird_d = Bird.create(name: "Mourning Dove", species: "Zenaida Macroura", tree: tree_a) 


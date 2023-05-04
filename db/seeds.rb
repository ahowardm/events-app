# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.delete_all
Venue.delete_all

Category.create [
    {name: 'Concierto'},
    {name: 'Feria'},
    {name: 'Evento deportivo'}
]

Venue.create([
    {name: 'Estadio Nacional', address: 'Av. Grecia s/n', capacity: 45000},
    {name: 'Estadio Víctor Jara', address: 'Arturo Godoy 2750', capacity: 15000},
    {name: 'Intercomunal de La Reina', address: 'Francisco Bilbal s/n', capacity: 7000}
])
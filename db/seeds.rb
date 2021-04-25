# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Video.destroy_all
Category.destroy_all


instruction = Category.create({name: "API Backend"})
news = Category.create({name: "News"})

Video.create({title: "Madeline 1", embed: '<iframe width="560" height="315" src="https://www.youtube.com/embed/SJlvydXVHcg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', notes: "setting up backend tutorial", category_id: instruction.id})
Video.create({title: "Long-Term Care", embed: '<iframe width="560" height="315" src="https://www.youtube.com/embed/2xlol-SNQRU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', notes: "getting old sucks", category_id: news.id})
Video.create({title: "Daunte Wright's Death", embed: '<iframe width="560" height="315" src="https://www.youtube.com/embed/oXX6itzmstM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', notes: "cops?", category_id: news.id})
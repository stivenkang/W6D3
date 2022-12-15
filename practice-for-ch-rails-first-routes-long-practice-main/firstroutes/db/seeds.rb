# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create(username: "Stiven")
# User.create(username: "Tim")
# User.create(username: "Brandon")
# User.create(username: "Dan")
# User.create(username: "Shwilly")

Artwork.create(title: "Dog Photo", image_url: "dog.pic", artist_id: User.first.id)
Artwork.create(title: "Cat Photo", image_url: "cat.pic", artist_id: User.second.id)
Artwork.create(title: "Sandwich Photo", image_url: "sandwichdrawing.pic", artist_id: User.last.id)

ArtworkShare.create(artwork_id: Artwork.first.id, viewer_id: User.first.id)
ArtworkShare.create(artwork_id: Artwork.second.id, viewer_id: User.second.id)
ArtworkShare.create(artwork_id: Artwork.last.id, viewer_id: User.last.id)
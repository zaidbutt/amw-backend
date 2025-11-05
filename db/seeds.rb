# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "🌱 Seeding dummy chapters..."

# Chapter.destroy_all

chapters = [
  { title: "Family Memories", order: 1, story_id: 1 },
  { title: "Travel Adventures", order: 2, story_id: 2 },
  { title: "Childhood Moments", order: 3, story_id: 2 },
  { title: "Career Highlights", order: 4, story_id: 2 },
  { title: "Special Occasions", order: 5, story_id: 2 }
]

chapters.each do |chapter|
  Chapter.create!(chapter)
end

puts "✅ Seeded #{Chapter.count} chapters!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"


Recipe.delete_all
Category.delete_all

csv_file = Rails.root.join('db/Recipes.csv')
csv_data = File.read(csv_file)
recipes = CSV.parse(csv_data, headers: true, encoding: "utf-8")

recipes.each do |r|
  category = Category.find_or_create_by(name: r['Category'])

  if category && category.valid?
    recipe = category.recipes.create(
      title: r['Title'],
      directions: r['Directions']
    )
  else
    puts "Invalid category:  #{r['Category']} for recipe: #{r['Title']}"
  end
end
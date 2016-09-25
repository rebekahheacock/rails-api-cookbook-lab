# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

Recipe.create([
                { name: 'Sugar Cookies', description: 'Mmmm cookies.' },
                { name: 'Grilled Cheese', description: 'So good.' }
              ])

Ingredient.create([
                    {
                      name: 'flour',
                      std_measure: 'cup',
                      color: 'white',
                      toxicity: false,
                      recipe_id: 1
                    },
                    {
                      name: 'sugar',
                      std_measure: 'cup',
                      color: 'white',
                      toxicity: false,
                      recipe_id: 1
                    },
                    {
                      name: 'butter',
                      std_measure: 'stick',
                      color: 'yellow',
                      toxicity: false,
                      recipe_id: 1
                    },
                    {
                      name: 'bread',
                      std_measure: 'slice',
                      color: 'tan',
                      toxicity: false,
                      recipe_id: 2
                    },
                    {
                      name: 'cheese',
                      std_measure: 'oz',
                      color: 'white',
                      toxicity: false,
                      recipe_id: 2
                    }
                  ])

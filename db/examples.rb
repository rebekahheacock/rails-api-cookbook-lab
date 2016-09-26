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
                      toxicity: false
                    },
                    {
                      name: 'sugar',
                      std_measure: 'cup',
                      color: 'white',
                      toxicity: false
                    },
                    {
                      name: 'butter',
                      std_measure: 'stick',
                      color: 'yellow',
                      toxicity: false
                    },
                    {
                      name: 'bread',
                      std_measure: 'slice',
                      color: 'tan',
                      toxicity: false
                    },
                    {
                      name: 'cheese',
                      std_measure: 'oz',
                      color: 'white',
                      toxicity: false
                    }
                  ])

Amount.create([
                {
                  quantity: 2.75,
                  ingredient_id: 1,
                  recipe_id: 1
                },
                {
                  quantity: 1.5,
                  ingredient_id: 2,
                  recipe_id: 1
                },
                {
                  quantity: 2,
                  ingredient_id: 3,
                  recipe_id: 1
                },
                {
                  quantity: 0.125,
                  ingredient_id: 3,
                  recipe_id: 2
                },
                {
                  quantity: 2,
                  ingredient_id: 4,
                  recipe_id: 2
                },
                {
                  quantity: 2,
                  ingredient_id: 5,
                  recipe_id: 2
                }
              ])

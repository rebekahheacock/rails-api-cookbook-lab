curl --include --request POST http://localhost:3000/recipes \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "name": "Black Beans and Rice",
      "description": "Cook them."
    }
  }'

curl --include --request GET http://localhost:3000/recipes

curl --include --request GET http://localhost:3000/recipes/3

curl --include --request PATCH http://localhost:3000/recipes/3 \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "name": "Red Beans and Rice",
      "description": "Cook them."
    }
  }'

curl --include --request DELETE http://localhost:3000/recipes/3




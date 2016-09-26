curl --include --request POST http://localhost:3000/amounts \
  --header "Content-Type: application/json" \
  --data '{
    "amount": {
      "quantity": "0.25",
      "ingredient_id": "3",
      "recipe_id": "3"
    }
  }'

curl --include --request GET http://localhost:3000/amounts

curl --include --request GET http://localhost:3000/amounts/7

curl --include --request PATCH http://localhost:3000/amounts/7 \
  --header "Content-Type: application/json" \
  --data '{
    "amount": {
      "quantity": "0.125",
      "ingredient_id": "3",
      "recipe_id": "3"
    }
  }'

curl --include --request DELETE http://localhost:3000/amounts/7




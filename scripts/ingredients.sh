curl --include --request POST http://localhost:3000/ingredients \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "lemon zest",
      "std_measure": "tsp",
      "color": "yellow"
    }
  }'

curl --include --request GET http://localhost:3000/ingredients

curl --include --request GET http://localhost:3000/ingredients/3

curl --include --request PATCH http://localhost:3000/ingredients/4 \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "broccoli",
      "std_measure": "head",
      "color": "green"
    }
  }'




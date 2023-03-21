# Restaurant Pizza API 

This is a Rails API for tracking pizza restaurants. It has the following resources:

- Restaurants
- Pizzas


## Requirements

To use this API, you must have:

- ruby -v 3.0.2

- rails -v 7.0.4.3

-Sqlite3 installed on your machine.

### Usage 

To install and use this API, follow these steps:

1. Clone the repository

   git clone ``https://github.com/AlexTanui/pizza-restaurant.git``

2. install the dependencies

   cd Pizza-Restaurant

   bundle install

3. set up the database:

   rails db:migrate

   rails db:seed

4. Start the server

   rails s

Once the server is up and runnning, you should be able to access the API at `https://localhost:3000`.

#### Routes

- This API has the following routes:

# GET https://code-rr2i.onrender.com/restaurants

- Returns a list of all restaurants

example response:

git[ { "id": 1, "name": "Sottocasa NYC", "address": "298 Atlantic Ave, Brooklyn, NY 11201" }, { "id": 2, "name": "PizzArte", "address": "69 W 55th St, New York, NY 10019" }]

## GET https://code-rr2i.onrender.com/restaurants/:id

- Returns the details of a restaurant, including the pizzas it serves.

- Example response

{
"id": 1,
"name": "Sottocasa NYC",
"address": "298 Atlantic Ave, Brooklyn, NY 11201",
"pizzas": [
{
"id": 1,
"name": "Cheese",
"ingredients": "Dough, Tomato Sauce, Cheese"
},
{
"id": 2,
"name": "Pepperoni",
"ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
}
]
}

#### DELETE https://code-rr2i.onrender.com/restaurants/:id

-Deletes a restaurant and all of its associated restaurant pizzas.

- Returns an empty response body.

#### GET https://code-rr2i.onrender.com/pizzas

-Returns a list of all pizzas.

- Example response:

[ { "id": 1,
"name": "Cheese",
"ingredients": "Dough, Tomato Sauce, Cheese" },
{ "id": 2, "name": "Pepperoni",
"ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni" }]

# Author

This project was contributed by :
 - [Alex Tanui](https://github.com/AlexTanui/Petfinder-phase3)
 



# License
The project is licensed `ISC`


class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    validates :pizzas, length: { maximum: 10, too_long: "cannot have more than %{count} pizzas" }

end

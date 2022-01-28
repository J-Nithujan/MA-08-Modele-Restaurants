SELECT * from dbo.allergens
SELECT * from dbo.dish_has_allergen
SELECT * from dbo.dish_has_ingredient
SELECT * from dbo.dishes
SELECT * from dbo.dishes_types
SELECT * from dbo.ingredients
SELECT * from dbo.locations
SELECT * from dbo.measurement_units
SELECT * from dbo.order_detail_has_ingredient
SELECT * from dbo.order_details
SELECT * from dbo.orders
SELECT * from dbo.restaurant_has_dish
SELECT * from dbo.restaurant_has_sale
SELECT * from dbo.restaurant_has_type_of_restaurant
SELECT * from dbo.restaurant_has_user
SELECT * from dbo.restaurant_types
SELECT * from dbo.restaurants
SELECT * from dbo.reviews
SELECT * from dbo.sales
SELECT * from dbo.users


-- Permettre de rechercher des restaurants:
-- - avec un bon avis (reviews)
SELECT * FROM dbo.restaurants AS resto
    INNER JOIN dbo.reviews AS avis ON dbo.reviews.restaurant_id = resto.id
    WHERE avis.rating >= 4;

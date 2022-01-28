SELECT * from [db_restaurants].[dbo].allergens
SELECT * from [db_restaurants].[dbo].dish_has_allergen
SELECT * from [db_restaurants].[dbo].dish_has_ingredient
SELECT * from [db_restaurants].[dbo].dishes
SELECT * from [db_restaurants].[dbo].dishes_types
SELECT * from [db_restaurants].[dbo].ingredients
SELECT * from [db_restaurants].[dbo].locations
SELECT * from [db_restaurants].[dbo].measurement_units
SELECT * from [db_restaurants].[dbo].order_detail_has_ingredient
SELECT * from [db_restaurants].[dbo].order_details
SELECT * from [db_restaurants].[dbo].orders
SELECT * from [db_restaurants].[dbo].restaurant_has_dish
SELECT * from [db_restaurants].[dbo].restaurant_has_sale
SELECT * from [db_restaurants].[dbo].restaurant_has_type_of_restaurant
SELECT * from [db_restaurants].[dbo].restaurant_has_user
SELECT * from [db_restaurants].[dbo].restaurant_types
SELECT * from [db_restaurants].[dbo].restaurants
SELECT * from [db_restaurants].[dbo].reviews
SELECT * from [db_restaurants].[dbo].sales
SELECT * from [db_restaurants].[dbo].users


-- Permettre de rechercher des restaurants:
-- - avec un bon avis (reviews)
SELECT * FROM [db_restaurants].[dbo].restaurants AS resto
    INNER JOIN [db_restaurants].[dbo].reviews AS avis ON restaurant_id = resto.id
    WHERE avis.rating >= 4;


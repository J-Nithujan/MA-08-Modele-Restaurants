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

-- - qui ne proposent pas tel allergène
-- - en fonction du type de plats ou d’autres critères.

-- Permettre de répondre à des questions concernant la cartographie du paysage alimentaire d’un lieu.
--      - restaurants avec des plats chers vers Lausanne (NIP ~1000)
SELECT * FROM dbo.restaurants AS resto
    INNER JOIN dbo.locations AS place ON place.id = resto.location_id
    INNER JOIN dbo.restaurant_has_dish AS rhd ON rhd.restaurant_id = resto.id
    INNER JOIN dbo.dishes AS plat ON rhd.dish_id = plat.id
    WHERE place.ZIP <= 1010 AND
        (plat.base_price IS not null AND plat.base_price >= 1000);

--      - quel est le plus représenté des types de plats dans le code postal X
SELECT * FROM dbo.restaurants AS resto
    INNER JOIN dbo.locations AS place ON place.id = resto.location_id
    INNER JOIN dbo.restaurant_has_dish AS rhd ON rhd.restaurant_id = resto.id
    INNER JOIN dbo.dishes AS plat ON rhd.dish_id = plat.id
    INNER JOIN dbo.dishes_types AS dish_type ON dish_type.id = plat.dish_type_id
    WHERE dish_type.name = (SELECT TOP 1 name
        FROM dbo.dishes AS plat
        INNER JOIN dbo.dishes_types AS dish_type ON dish_type.id = plat.dish_type_id
        GROUP BY dish_type.name
        ORDER BY count(plat.dish_type_id) DESC
        );

-- -   Un client désire manger des boulettes de viande ou un fallafel. Ce plat peut être commandé dans plusieurs types de restaurants (kebab, restaurant asiatique, restaurant africain).


-- plats commandés par un utilisateur
SELECT * FROM dbo.users AS utilisateur 
    INNER JOIN dbo.orders as commande ON commande.user_id = utilisateur.id
    INNER JOIN 


-- de quelles promotions les utilisateurs ont-ils profité ? (trop complexe)

-- -   Qu’un client puisse rechercher un restaurant de type pizzeria-kebab qui propose des plats sans son allergène (p.ex céréales).


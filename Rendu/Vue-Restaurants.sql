USE [db_restaurants]
GO

CREATE VIEW counting_elements AS

SELECT a.nb AS nb_allergens, b.nb AS nb_dish_has_allergen, c.nb AS nb_dish_has_ingredient, d.nb AS nb_dishes, e.nb AS nb_dishes_types, f.nb AS nb_ingredients, g.nb AS nb_locations, h.nb AS nb_measurement_units, i.nb AS nb_order_detail_has_ingredient, j.nb AS nb_order_details, l.nb AS nb_orders, m.nb AS nb_restaurant_has_dish, n.nb AS nb_restaurant_has_sale, o.nb AS nb_restaurant_has_user, p.nb AS nb_restaurant_has_type_of_restaurant, q.nb AS nb_restaurant_types, r.nb AS nb_restaurants, s.nb AS nb_reviews, t.nb AS nb_sales, u.nb AS nb_users
 FROM 
  (SELECT count(id) as nb FROM allergens) AS a,
  (SELECT count(id) as nb FROM dish_has_allergen) AS b,
  (SELECT count(id) as nb FROM dish_has_ingredient) AS c,
  (SELECT count(id) as nb FROM dishes) AS d,
  (SELECT count(id) as nb FROM dishes_types) AS e,
  (SELECT count(id) as nb FROM ingredients) AS f,
  (SELECT count(id) as nb FROM locations) AS g,
  (SELECT count(id) as nb FROM measurement_units) AS h,
  (SELECT count(id) as nb FROM order_detail_has_ingredient) AS i,
  (SELECT count(id) as nb FROM order_details) AS j,
  (SELECT count(id) as nb FROM orders) AS l,
  (SELECT count(id) as nb FROM restaurant_has_dish) AS m,
  (SELECT count(id) as nb FROM restaurant_has_sale) AS n,
  (SELECT count(id) as nb FROM restaurant_has_user) AS o,
  (SELECT count(id) as nb FROM restaurant_has_type_of_restaurant) AS p,
  (SELECT count(id) as nb FROM restaurant_types) AS q,
  (SELECT count(id) as nb FROM restaurants) AS r,
  (SELECT count(id) as nb FROM reviews) AS s,
  (SELECT count(id) as nb FROM sales) AS t,
  (SELECT count(id) as nb FROM users) AS u
 ;

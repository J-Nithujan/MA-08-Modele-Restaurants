-- ordre d'insertion des données


-- ordre 1 valide
INSERT [dbo].[sales]
INSERT [dbo].[allergens]
INSERT [dbo].[dishes_types]
INSERT [dbo].[measurement_units]
INSERT [dbo].[locations]
INSERT [dbo].[restaurant_types]

-- ordre 2 valide
INSERT [dbo].[dishes]
INSERT [dbo].[ingredients]
INSERT [dbo].[users]
INSERT [dbo].[restaurants]

-- ordre 3 valide
INSERT [dbo].[dish_has_allergen]
INSERT [dbo].[dish_has_ingredient]
INSERT [dbo].[orders]
INSERT [dbo].[restaurant_has_dish]
INSERT [dbo].[restaurant_has_type_of_restaurant]
INSERT [dbo].[restaurant_has_sale]
INSERT [dbo].[restaurant_has_user]
INSERT [dbo].[reviews]

-- ordre 3+ / 4 valide
INSERT [dbo].[order_details]
INSERT [dbo].[order_detail_has_ingredient]

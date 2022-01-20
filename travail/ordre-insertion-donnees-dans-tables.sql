# ordre d'insertion ci-dessous obtenu ainsi:
# - populer la BDD 
#		- (p.ex. avec un plugin comme celui de RedGate DataGenerator) ou (p.ex. avant insertion des contraintes puis rajouter les contraintes)
# - utiliser SSMS pour exporter UNIQUEMENT les scripts d'insertion pour toutes les tables de la BDD.
# 		- p.ex.
# - supprimer les doublons

# =======================================================

# ordre 1 validé
INSERT [dbo].[sales]
INSERT [dbo].[allergens]
INSERT [dbo].[dishes_types]
INSERT [dbo].[measurement_units]
INSERT [dbo].[locations]
INSERT [dbo].[restaurant_types]

# ordre 2 validé
INSERT [dbo].[dishes]
INSERT [dbo].[ingredients]
INSERT [dbo].[users]
INSERT [dbo].[restaurants]

# ordre 3 validé
INSERT [dbo].[reviews]
INSERT [dbo].[dish_has_allergen]
INSERT [dbo].[restaurant_has_dish]
INSERT [dbo].[orders]
INSERT [dbo].[restaurant_has_type_of_restaurant]
INSERT [dbo].[restaurant_has_sale]
INSERT [dbo].[restaurant_has_user]
INSERT [dbo].[dish_has_ingredient]

# ordre 3+ / 4 validé
INSERT [dbo].[order_details]
INSERT [dbo].[order_detail_has_ingredient]


# =======================================================


INSERT [dbo].[allergens]
INSERT [dbo].[dishes_types]
INSERT [dbo].[dishes]
INSERT [dbo].[dish_has_allergen]
INSERT [dbo].[measurement_units]
INSERT [dbo].[ingredients]
INSERT [dbo].[dish_has_ingredient]
INSERT [dbo].[locations]
INSERT [dbo].[users]
INSERT [dbo].[orders]
INSERT [dbo].[order_details]
INSERT [dbo].[restaurants]
INSERT [dbo].[restaurant_has_dish]
INSERT [dbo].[order_detail_has_ingredient]
INSERT [dbo].[restaurant_types]
INSERT [dbo].[restaurant_has_type_of_restaurant]
INSERT [dbo].[sales]
INSERT [dbo].[restaurant_has_sale]
INSERT [dbo].[restaurant_has_user]
INSERT [dbo].[reviews]



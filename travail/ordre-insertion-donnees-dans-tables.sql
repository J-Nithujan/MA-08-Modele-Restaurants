# ordre d'insertion ci-dessous obtenu ainsi:
# - populer la BDD 
#		- (p.ex. avec un plugin comme celui de RedGate DataGenerator) ou (p.ex. avant insertion des contraintes puis rajouter les contraintes)
# - utiliser SSMS pour exporter UNIQUEMENT les scripts d'insertion pour toutes les tables de la BDD.
# 		- p.ex.
# - supprimer les doublons

# =======================================================

# ordre 1 validé
INSERT [dbo].[sales] -- ok (import bdd ok) / 50
INSERT [dbo].[allergens] -- ok (import bdd ok) / 50
INSERT [dbo].[dishes_types] -- ok (import bdd ok)
INSERT [dbo].[measurement_units] -- ok (import bdd ok)
INSERT [dbo].[locations] -- ok (import bdd ok)
INSERT [dbo].[restaurant_types] -- ok (import bdd ok)

# ordre 2 validé
INSERT [dbo].[dishes] -- / 350
INSERT [dbo].[ingredients] -- / 200
INSERT [dbo].[users] -- / 400
INSERT [dbo].[restaurants] -- / 300

# ordre 3 validé
INSERT [dbo].[dish_has_allergen] -- 500
INSERT [dbo].[dish_has_ingredient] -- 500
INSERT [dbo].[orders] -- 100
INSERT [dbo].[restaurant_has_dish] -- 500 -- ok
INSERT [dbo].[restaurant_has_type_of_restaurant] -- 450
INSERT [dbo].[restaurant_has_sale] -- 350 -- ok
INSERT [dbo].[restaurant_has_user] -- 300
INSERT [dbo].[reviews] -- 200

# ordre 3+ / 4 validé
INSERT [dbo].[order_details] -- 200
INSERT [dbo].[order_detail_has_ingredient] -- 200 -- ok


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



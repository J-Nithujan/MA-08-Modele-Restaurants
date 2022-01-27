USE [ECommerce_data]
GO

INSERT [dbo].[sales] ([id], [name]) 
      VALUES
            (1, N'Soldes Noel'),
            (2, N'Soldes été'),
            (3, N'Nouvel an chinois'),
            (4, N'Black Friday')

GO

INSERT INTO [dbo].[promotions]
           ([name]
           ,[percentSale]
           ,[startDate]
           ,[endDate])
     VALUES
           ('Soldes Noel', 25.0,'2021-12-10' ,'2021-12-24'),
           ('Soldes été', 20.0,'2021-07-01' ,'2021-07-14'),
           ('Nouvel an chinois', 15.0,'2021-04-01' ,'2021-04-02'),
           ('Black Friday', 30.0,'2021-12-24' ,'2021-11-26')
GO


USE [ECommerce_data]
GO

INSERT INTO [dbo].[customer_categories]
           ([name])
     VALUES
           ('Standard'),
           ('Gold'),
           ('Platine')
GO


INSERT INTO [dbo].[order_states]
           ([name])
     VALUES
           ('Nouvelle'),
           ('En préparation'),
           ('Expédiée'),
           ('Terminée')
GO



USE [ECommerce_data]
GO

INSERT INTO [dbo].[customers]
           ([firstname]
           ,[lastname]
           ,[inscriptionDate]
           ,[customer_category_id])
     VALUES
           ('Henry' ,'Arsene' ,'2021-09-13', 2),
           ('Anne-Pascale' ,'Burdant' ,'2021-10-10', 1),
           ('Pascal' ,'Hurny' ,'2021-11-13', 2),
           ('Alice' ,'Alpha' ,'2021-05-06', 3),
           ('Bob' ,'Beta' ,'2021-06-28', 3),
           ('Narberal' ,'Gamma' ,'2021-07-21', 3),
           ('Auréole' ,'Omega' ,'2021-09-20', 1),
           ('Regina' ,'Bilon' ,'2021-05-20', 1),
           ('Fran' ,'Cesca' ,'2021-03-01', 1),
           ('Mochi' ,'Zuki' ,'2021-04-01', 3)
GO



USE [ECommerce_data]
GO

INSERT INTO [dbo].[customers_receive_promotions]
           ([customer_id]
           ,[promotion_id])
     VALUES
           (10, 1),
           (10, 2),
           (10, 3),
           (10, 4),
           (9, 4),
           (3, 1),
           (1, 1),
           (1, 3),
           (4, 2)
GO



USE [ECommerce_data]
GO

INSERT INTO [dbo].[product_categories]
           ([name])
     VALUES
           ('Electroménager'),
           ('Ordinateurs'),
           ('Mode, vêtements, accessoires'),
           ('Antique')
GO


USE [ECommerce_data]
GO

INSERT INTO [dbo].[products]
           ([brand]
           ,[model]
           ,[description]
           ,[price]
           ,[inventoryReceived]
           ,[product_category_id])
     VALUES
            ('Chanel', 'CC' ,'Magnifique boucles d oreilles', 950 ,5 ,3),
            ('Supreme', 'T-shirts' ,'T-shirt à manches courtes', 50, 30, 3),
            ('Chico', 'poussette bébé' ,'Pour votre nourisson', 159, 4, 3),
            ('Supreme', 'T-shirts' ,'T-shirt à manches courtes', 50, 30, 3),

            ('Leader ClearLax', 'Jam - Apricot', 'Grus rubicundus', 1605, 49, 1),
            ('Pleo San Brucel', 'Wine - Alsace Riesling Reserve', 'Colobus guerza', 2246, 26, 3),
            ('CVS Extra Strength Cold', 'Beer - Alexander', 'Phascogale calura', 1777, 30, 3),
            ('Colgate', 'Cookie Dough - Peanut Butter', 'Pavo cristatus', 659, 10, 1),
            ('Hydrocortisone', 'Dc Hikiage Hira Huba', 'Bucephala clangula', 2016, 24, 3),
            ('Bio Honeysuckle', 'Red Pepper Paste', 'Meles meles', 792, 11, 4),
            ('Fiorinal', 'Salmon - Atlantic, Skin On', 'Manouria emys', 453, 28, 2),
            ('QUESTRAN', 'Club Soda - Schweppes, 355 Ml', 'Acanthaster planci', 197, 30, 2),
            ('Drainage', 'Pork - Belly Fresh', 'Tockus flavirostris', 405, 23, 2),
            ('Escitalopram', 'Vinegar - Sherry', 'Phalaropus lobatus', 517, 49, 1),
            ('MORPHINE SULFATE', 'Sauce - Au Jus Mix', 'Loris tardigratus', 2374, 31, 1),
            ('Hydrochloride', 'Arctic Char', 'Carduelis uropygialis', 2084, 36, 1),
            ('Cold relief', 'Ham - Proscuitto', 'Stercorarius longicausus', 2325, 23, 4),
            ('ED CHLORPED JR', 'Butcher Twine 4r', 'Panthera leo', 1724, 21, 3),
            ('Body', 'Irish Whiskey', 'Dusicyon thous', 1090, 39, 1),
            ('Iopidine', 'Veal Provini', 'Centrocercus urophasianus', 1504, 48, 4),
            ('Gabapentin', 'Salami - Genova', 'Tamandua tetradactyla', 247, 13, 1),
            ('Insti-Foam', 'Cookies - Englishbay', 'unavailable', 420, 36, 3),
            ('Ultra Glow Fade', 'Seedlings', 'Mycteria leucocephala', 1245, 32, 3),

            ('FAMILY CARE', 'Salt - Kosher', 'Actophilornis africanus', 1579, 14, null)
GO


Réfléexions à faire ensemble:

- [ ] Promo code pas pour tous les clients
  promo code (i.e. promotion name) dans la table orders (commande) ?
  - [ ] et au niveau applicatif on fait en sorte de ne prendre des commandes que d'un seul restaurant à la fois.
    - [ ] Au besoin, si utilisateur commande cchez nous des plats de plusieurs restaurants, on splitte sa commande en 2 et on lui envoie 2 mails de confirmation. (il fait 1 paiement mais on lui envoie 2 confirmations pour dire que chaque restaurant a bien reçu sa commande).



MLD

- [ ] Les associations et Les tables intermédiaires 
  - [ ] Vérifier Les cardinalités
    - [ ] (cardinalités 0 au lieu 1)
  - [ ] Vérifier les clefs primaires des assoc.
- [ ] Vérifier pour chaque table
  - [ ] les types des attributs
    - [x] Type `DECIMAL` pour les prix et valeurs exactes, plutôt que des `INT` ou `FLOAT`s
  - [ ] quels attributs devraient être non `Null`
  - [ ] Vérifier les contraintes (UNIQUE, ...)
  - [x] nommage
    - [x] nommage des champs de clef primaires
      - [x] pour les tables
      - [x] pour les tables intermédiaires
    - [x] nommage des champs
    - [x] PAS d'espaces pour les noms de tables. (underscores)
    - [x] PAS d'espaces pour les champs
    - [x] PAS d'espaces pour les associations (noms de table et champs)
  - [ ] Taille de certains types numériques (decimal, ...)
- [ ] Les standards
  - [ ] `Varchar`s
    - [ ] Checker que la longueur des varchar fait sens
    - [ ] Checker avec les standards ISO, etc... , sinon garder ce qui fait sens
  - [ ] 





Cahier des charges

- [ ] Ajouter des objectifs
  - [x] "connaitre les propriétaire du restaurant X"
  - [ ] ... [ajouter des types de questions auxquelles on pourrait vouloir répondre] ...
- [ ] compléter phrases à moitié entamées
- [ ] Cohérence de la place de certains paragraphes. Des paragraphes à déplacer ?




--------



#### Questions au prof



- [ ] Dans l'idée de différencier le prix des plats en fonction du restaurant, et de différencier le prix des ingrédients en fonction des plats,
  je (Jeffrey) pense à intégrer les champs prix dans les tables intermédiaires (`restaurants_have_dishes` et `dishes_have_ingredients`).
  - [ ] Je suppose que ça fonctionnera en MLD (i.e. nous permettra de retrouver et faire des requêtes pour toutes les données). Est-ce correct ?
  - [ ] Je ne vois pas comment faire un MLD valide et cohérent avec cette approche. Une idée (du prof) ?








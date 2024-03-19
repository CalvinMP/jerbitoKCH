# Exercices sur les variants et records

## Types énumérés


### Résultat de match échec:

- `type match_result = Victory | Draw | Defeat;;`

- `let get_result v = 
match v with 
| Victory -> 1.
| Draw -> 0.5
| Defeat -> 0.;;`



### Type semaine:

- `type semaine = 
Lundi |
Mardi |
Mercredi |
Jeudi |
Vendredi |
Samedi |
Dimanche;;`

- `fonction week-end:
let is_weekend d =
 match d with 
| Samedi | Dimanche -> true
| _ -> false;;`


### Machine à état: 

#### Type
- `type etat = Metro | Boulot | Dodo;;`

#### Machine:
- `let machine_etat e = 
match e with 
| Metro -> Boulot
| Boulot -> Dodo
| Dodo -> Metro;;`

#### 5) Oui la fonction marche toujours car elle a enfermée les valeurs de la précédente machine à état. Elle ne prendra cependant pas en compte la nouvelle valeur Vacance.


### Cartes à jouer:

#### Types

##### Couleur
- `type couleur_carte = Pique | Trefle | Carreau | Coeur;;`

##### Valeur
- `type valeur_carte = As | Roi | Reine | Valet | Dix | Neuf | Huit | Sept;;`

##### Carte
- `type carte = {valeur: valeur_carte; couleur: couleur_carte};;`

### Est rouge
- `let est_rouge carte = 
match carte.couleur with 
| Coeur | Carreau -> true
| _ -> false;;`

### Est une tête

- `let is_head carte = 
match carte.valeur with 
| Roi | Reine | Valet -> true
| _ -> false;;`


### Scores

#### Normal
- `let score_normal carte = 
match carte.valeur with 
| As -> 11
| Dix -> 10
| Roi -> 4
| Reine -> 3
| Valet -> 2
| _ -> 0;;`

#### Atout 
- `let score_atout carte = 
match carte.valeur with 
| As -> 11
| Dix -> 10
| Roi -> 4
| Reine -> 3
| Valet -> 20
| Neuf -> 14
| _ -> 0;;`

## Constructeurs avec données

### Nombre
- `type nombre = Int of int | Float of float;;`


### Opérations sur deux Nombre

#### Somme 
- `let somme a b = 
match a, b with
| Entier a, Entier b -> Entier (a+b)
| Flottant a, Entier b -> Flottant (a +. float_of_int b)
| Entier a, Flottant b -> Flottant (float_of_int a +. b)
| Flottant a, Flottant b -> Flottant (a +. b);;`

#### Division

- `let division a b = 
match a, b with
| Entier x, Entier y -> 
if x mod y = 0 then Entier (x/y)
else Flottant (float_of_int x /. float_of_int y)
| Entier x, Flottant y | Flottant y, Entier x -> Flottant (float_of_int x /. y)
| Flottant x, Flottant y -> Flottant(x /. y);;`

#### Multiplication
- `let mul a b = 
match a, b with
| Entier a, Entier b -> Entier (a*b)
| Flottant a, Entier b -> Flottant (a *. float_of_int b)
| Entier a, Flottant b -> Flottant (float_of_int a *. b)
| Flottant a, Flottant b -> Flottant (a *. b);;`


## Types enregistrement (ou produits)

### Point
- `type point = {x: int; y: int};;`
- `type point = {x: float; y: float};;`


## Combinaison de types produits et types

### Ajout du Joker dans le type carte

##### Couleur

##### Valeur
- `type valeur_carte = Joker As | Roi | Reine | Valet | Dix | Neuf | Huit | Sept;;`

##### Carte
- `type carte = {valeur: valeur_carte; couleur: couleur_carte};;`
- 
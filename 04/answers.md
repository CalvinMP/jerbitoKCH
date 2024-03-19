# Travaux pratiques — n-uplet et exception


## Question 1 :

### first :
- `let first (a, b) = a;;`
- `let first a = match a with (x, _) -> x;;`
- `let first (x, _) = x;;`

### second :
- `let second (a, b) = b;;`
- `let second a = match a with (_, x) -> x;;`
- `let second (_, x) = x;;`

## Question 2 :

- `let somme_paire (x, y) (aa, bb) = (x + aa, y ^ bb);;`
- `let somme_paire a b = match a, b with ((x, y), (aa, bb)) -> (x + aa, y ^ bb);;`

## Question 3 :
- `let suffix_prefix c s = 
match String.split_on_char c s with 
[] -> None, None
| a::[] -> None, None
| ""::b::xs -> None, Some b.[0]
| a::""::xs -> Some a.[String.length a -1], None
| a::b::xs -> Some a.[String.length a -1], Some b.[0];;`

## Question 4 : 

### Zip
- `let rec zip a b = 
match a, b with
[], [] -> []
| [], _ | _, [] -> raise  (Invalid_argument "Listes de tailles différentes")  
| aa::xs, bb::xr -> (aa, bb)::zip xs xr;;`

### Unzip
- ``
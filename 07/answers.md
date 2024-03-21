# Modules

#### Pour utiliser un module externe (exemple avec benford)

#### Dans utop, taper : `#use "./07/benford.ml";;`

### InSet
```OCaml
module InSet = Set.Make(struct
type t = int 
let compare a b = a - b
end);;
```

## IntMap
```OCaml
module IntMap = Map.Make(struct
type t = int  (*Le type donné ici sera la type des clés des ensemble de ce module*)
let compare a b = a - b
end);;
```

# Fonctions

### has_dupes
```OCaml
let has_dupes l = InSet.(l |> of_list |> cardinal <> List.length l);;
```

### uniq 
```OCaml
let uniq l = InSet.(l |> of_list |>  elements);;
```


### charmap_of_list
```OCaml
let charmap_of_list u = u |> List.to_seq;;
```

### intmap_of_list
```OCaml
let intmap_of_list u = u |> List.to_seq |> CharMap.of_seq;;
```

### char_digit
```OCaml
let char_digit c = if c < 10 then char_of_int (c + 48) else raise (Invalid_argument "Pas un chiffre");;
```
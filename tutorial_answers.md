# Réponses aux tutoriels &mdash;

## char_succ

1. Première Version :
- `let char_succ c = char_of_int(if succ(int_of_char(c)) >= 255 then 0 else succ(int_of_char(c)) )`

2. Simplifié :
- `let char_succ c = if c < '\255' then char_of_int(succ(int_of_char(c))) else '\000'`

## string_cons

- `let string_cons c s = (String.make 1 c) ^ s`

## sqrt_of_string
 - `let a = int_of_string "81" in
let b = float_of_int a in
let c = sqrt b in 
let d = int_of_float c in d`


## screams
- `let cr = "cream" in 
let i_u_we = "I scream, you scream, we all scream" in 
i_u_we ^ " for ice " ^cr`

## screams imbriqués

- `let cr = "cream" in
let i_u_we = 
let sr = string_cons 's' cr in 
"I " ^ sr ^ ", you " ^ sr ^ ", we all " ^ sr in 
i_u_we ^ " for ice " ^ cr`

## char_range

- `let rec char_range lo hi = if lo > hi then "" else string_cons lo (char_range(char_succ lo) hi)`

## dernier élément d'une liste

- `let last_el ll =  let l = List.rev ll in  List.hd l;;`
- `let last_el ll  = List.hd(List.rev ll);;`

## échanger les deux premiers éléments d'une liste

- `let swap ll = match ll with 
| [] -> ll
| a :: [] -> ll
| a :: b :: xs -> b :: a :: xs;;`

## initialiser une liste de n éléments avec valeur personnalisée

- `let repeat n a = match n with 
| n when n < 0 -> []
| _ -> List.init n (fun _ -> a);;`


## range_i

#### Voir si c'est pas dégueu comme implémentation

- `let range_i mi ma = match mi with 
| mi when mi > ma -> []
| _ -> List.init (ma + 1 - mi) (fun a -> mi + a);;`

## decr list

- `let rec decr ll = match ll with 
| [] -> ll
| a :: xs -> a - 1 :: decr xs ;;`

## rev list
- `let rev l =
let rec rev_aux acc rest = 
match rest with
| [] -> acc
| t::q -> rev_aux(t::acc) q
in rev_aux[] l;;`
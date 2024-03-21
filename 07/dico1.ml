type 'a t = (int * 'a) list

let empty = []

let find k d = 
let rec find_v p = match p with 
(key, vl):: xs -> if key = k then vl else find_v xs
| _ -> raise Not_found
in find_v d

let add (k, v) d = (k, v)::d

let del key d = List.filter (fun (x, _) -> x <> key) d
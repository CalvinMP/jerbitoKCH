module CharMap = Map.Make(struct
type t = char
let compare a b = (int_of_char a) - (int_of_char b)
end
)
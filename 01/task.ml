let char_succ = if c < '\255' then char_of_int(succ(int_of_char(c))) else '\000'

let string_cons c s = (String.make 1 c) ^ s

let a = int_of_string "81" in 
let b = float_of_int a in 
let c = sqrt b in 
let d = int_of_float c in d

let char_range lo hi = 
if lo <= hi 
then string_cons (char_succ lo) (char_range (char_succ lo) hi) 
else String.make 1 lo
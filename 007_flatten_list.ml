type 'a node =
  | One of 'a 
  | Many of 'a node list
;;

let rec flatten_helper acc = function 
  | [] -> acc
  | One t :: s -> flatten_helper (acc @ [t]) s
  | Many t :: s -> flatten_helper (flatten_helper acc t) s
;;
  
let a = flatten_helper [] [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]];;
List.iter print_string a;;

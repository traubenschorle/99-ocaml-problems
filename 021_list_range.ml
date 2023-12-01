let range (left: int) (right: int) = 
  let rec aux left right = 
    if left = right then [right] else left :: aux (left + 1) right
  in 
    if left > right then List.rev (aux right left) else aux left right
;;

let result = range 14 9;;
List.iter print_int result;;
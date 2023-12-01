let rec lengthHelper k = function 
  | [] -> 0
  | [ _ ] -> k+1
  | t :: ts -> lengthHelper (k+1) ts
;;

let length = lengthHelper 0

let a = length ["a"; "b"; "c"];;
print_int a;;

(* let b = length [];;
print_int b;; *)
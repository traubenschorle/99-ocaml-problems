
let rec duplicate = function 
  | [] -> []
  | s :: t -> s :: s :: duplicate t
;;

let result = duplicate ["a"; "b"; "c"; "c"; "d"];;
List.iter print_string result;;
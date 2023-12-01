open Printf 

let rec last_two = function 
  | [] -> None
  | [x] -> None 
  | [x; y] -> Some (x, y)
  | _ :: t -> last_two t
;;


let print_optional_list optional_list =
  match optional_list with
  | None -> print_endline "list too short!"
  | Some (x,y) -> printf "%s %s\n" x y
;;


print_optional_list (last_two ["a"; "b"; "c"; "d"]);;
print_optional_list (last_two ["a"]);;

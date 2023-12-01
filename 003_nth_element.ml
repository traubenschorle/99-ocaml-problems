let rec element_at n = function 
  | [] -> None 
  | t :: ts -> if n = 0 then Some t else element_at (n - 1) ts
;;

let print_optional element =
  match element with
  | None -> print_endline "No value!"
  | Some result -> print_endline result
;;

let a = element_at 3 ["a"; "b"; "c"; "d"; "e"];;
print_optional a;;

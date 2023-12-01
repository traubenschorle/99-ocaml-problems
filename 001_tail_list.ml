let rec last = function
  | [] -> None 
  | [x] -> Some x
  | _ :: t -> last t
;;

let print_optional element =
  match element with
  | None -> print_endline "No value!"
  | Some result -> print_endline result
;;

let a = last ["a" ; "b" ; "c" ; "d"];;
print_optional a;;

let b = last [];;
print_optional b;;

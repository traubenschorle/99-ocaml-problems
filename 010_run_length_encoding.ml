open Printf 

let rec encode_helper (counter: int) acc = function 
  | [] -> []
  | [x] -> (counter + 1, x) :: acc
  | a :: (b :: _ as t) -> if a = b then encode_helper (counter + 1) acc t else encode_helper 0 ((counter + 1, a) :: acc) t
  ;;

let encode = encode_helper 0 []
let result = encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;

let rec print_tuples = function
  | [] -> ()
  | (a, b) :: rest ->
    Printf.printf "%i, %s; " a b;
    print_tuples rest

let () =
  print_tuples (List.rev result);;

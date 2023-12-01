type 'a rle =
  | One of 'a
  | Many of int * 'a
;;

let rec encode_helper counter acc = function 
  | [] -> []
  | [x] -> if counter = 0 then One x :: acc else Many (counter + 1, x) :: acc
  | a :: (b :: _ as t) -> if a = b 
    then encode_helper (counter + 1) acc t 
    else encode_helper 0 (if counter = 0 then One a :: acc else Many (counter + 1, a) :: acc) t
  ;;

let result = encode_helper 0 [] ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;

let print_tuple = function 
  | One t -> Printf.printf "one %s " t
  | Many (i, t) -> Printf.printf "%i, %s; " i t
;;

let rec print_tuples = function
  | [] -> ()
  | t :: rest -> 
    print_tuple t;
    print_tuples rest
;;

let () =
  print_tuples (List.rev result);;

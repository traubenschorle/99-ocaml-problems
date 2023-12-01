let rec insert_at elem k = function 
  | [] -> []
  | (x :: xs as t) -> if k = 0 then elem :: t else x :: insert_at elem (k-1) xs
;;

let result = insert_at "alfa" 2 ["a"; "b"; "c"; "d"];;
List.iter print_string result;;

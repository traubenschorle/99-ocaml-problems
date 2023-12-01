let rec remove_at k list =  
  let rec aux i k = function 
    | [] -> []
    | x :: xs -> if i = k then aux (i + 1) k xs else x :: aux (i + 1) k xs
    in 
    aux 0 k list
;;

let result = remove_at 1 ["a"; "b"; "c"; "d"];;
List.iter print_string result;;
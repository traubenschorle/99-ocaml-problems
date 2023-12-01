
let rec split length acc = function 
  | [] -> (acc, [])
  | x :: xs -> if length = 0 then (acc, xs) else split (length - 1) (acc @ [x]) xs
;;

let result = split 5 [] ["a"; "b"; "c"; "d"];;
let (x, y) = result;;

List.iter print_string x;;

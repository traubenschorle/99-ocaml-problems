let rec compress = function 
  | s :: t :: ts -> if s = t then compress (t :: ts) else s :: compress (t :: ts)
  | short_list -> short_list
;;

let a = compress ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
List.iter print_string a;;
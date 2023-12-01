let rec helper_rev start_list = function 
  | [] -> start_list
  | t :: ts -> helper_rev (t :: start_list) ts

let rev = helper_rev []

let a = rev ["a"; "b"; "c"];;
List.iter print_string a;;
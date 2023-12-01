let rec helper_rev start_list = function 
  | [] -> start_list
  | t :: ts -> helper_rev (t :: start_list) ts
;;

let rev = helper_rev [];;

let is_palindrome list = rev list = list ;;

let a = is_palindrome ["x"; "a"; "m"; "a"; "x"];;
print_string (if a then "palindrome" else "no palindrome");;

let add x y = x + y

let powersOf2 n =
  let rec aux x i acc =
    if i > n then List.rev acc else aux (x + x) (i + 1) (x :: acc)
  in
  aux 2 1 []

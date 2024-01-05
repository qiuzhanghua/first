open First

let () =
  let x = Learn.add 1 2 in
  Printf.printf "1 + 2 = %d\n" x;
  let ps = Learn.powersOf2 10 in
  Printf.printf "Power of 10 = %s\n"
    ("[" ^ String.concat "; " (List.map string_of_int ps) ^ "]")

let () = ()

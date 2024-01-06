open First
open Owl
open Neural.S
open Neural.S.Graph
open Neural.S.Algodiff

let () =
  let x = Learn.add 1 2 in
  Printf.printf "1 + 2 = %d\n" x;
  let ps = Learn.powersOf2 10 in
  Printf.printf "Power of 10 = %s\n"
    ("[" ^ String.concat "; " (List.map string_of_int ps) ^ "]")

let make_network input_shape =
  input input_shape
  |> lambda (fun x -> Maths.(x / F 256.))
  |> conv2d [| 5; 5; 1; 32 |] [| 1; 1 |] ~act_typ:Activation.Relu
  |> max_pool2d [| 2; 2 |] [| 2; 2 |]
  |> dropout 0.1
  |> fully_connected 1024 ~act_typ:Activation.Relu
  |> linear 10 ~act_typ:Activation.(Softmax 1)
  |> get_network

let network = make_network [| 28; 28; 1 |]

let _ =
  Graph.print network;
  print_newline ()

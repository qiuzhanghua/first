open OUnit2
open First

let tests =
  "test suite for math"
  >::: [
         ("Add 2 int" >:: fun _ -> assert_equal 3 (Learn.add 1 2));
         ( "Powers of 2" >:: fun _ ->
           let e : int list = [ 2; 4; 8 ] in
           assert_equal e (Learn.powersOf2 3) );
       ]

let _ = run_test_tt_main tests

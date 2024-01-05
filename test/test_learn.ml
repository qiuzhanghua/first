open OUnit2
open First

let tests =
  "test suite for math"
  >::: [ ("learn add" >:: fun _ -> assert_equal 3 (Learn.add 1 2)) ]

let _ = run_test_tt_main tests

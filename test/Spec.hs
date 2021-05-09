{-# OPTIONS_GHC -F -pgmF htfpp #-}

import Test.Framework

main :: IO ()
main = htfMain htf_thisModulesTests

prop_add_commutative :: Int -> Int -> Bool
prop_add_commutative x y = x + y == y + x
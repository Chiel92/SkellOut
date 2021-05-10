{-# LANGUAGE TemplateHaskell #-}
module Test where

import Test.QuickCheck.All

prop_add_commutative :: Int -> Int -> Bool
prop_add_commutative x y = x + y == y + x

return []
runTests :: IO Bool
runTests = $quickCheckAll
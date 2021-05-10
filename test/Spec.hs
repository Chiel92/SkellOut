module Main where

import qualified Test
import System.Exit

main :: IO ()
main = do
  -- add test runners into the array for each module
  good <- and <$> sequence [Test.runTests]
  if good
     then exitSuccess
     else exitFailure
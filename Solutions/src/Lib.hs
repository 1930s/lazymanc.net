module Lib where

import           C2
import           C3
import           C4
import           C5
import           C6

output :: [IO ()] -> Integer -> IO ()
output [] _     = pure ()
output (f:fs) i = do
    putStrLn ""
    putStrLn ""
    putStrLn $ "Chapter " ++ show i ++ "."
    putStrLn ""
    f
    output fs (i + 1)

chapters :: IO ()
chapters = output [c2, c3, c4, c5, c6] 2

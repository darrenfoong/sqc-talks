module Main where

fact 0 = 1
fact 1 = 1
fact n = n * fact (n-1) -- not tail-recursive

fact2 n = fact2inner n 1

fact2inner n acc = if n > 1
                   then fact2inner (n-1) (n*acc)
                   else acc -- tail-recursive

main = print (map (\f -> f 10) [fact, fact2])
-- 3628800, 3628800

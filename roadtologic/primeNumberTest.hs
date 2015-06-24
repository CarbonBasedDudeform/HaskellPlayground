divides d n = rem n d == 0

ldf k n | divides k n = k
        | k^2 > n     = n
        | otherwise   = ldf (k+1) n

ld n = ldf 2 n

prime0 n | n < 1 = error "not a positive integer"
         | n == 1 = False
         | otherwise = ld n == n

maximumInList [] _ = error "Empty List."
maximumInList [x] y | y <= x = x
                    | otherwise = y
maximumInList (x:xs) y | y <= x = maximumInList xs x
                       | otherwise = maximumInList xs y

maxi x = maximumInList x 0

removeFst [] _ = []
removeFst [x] y | x == y = []
                | otherwise = [x]
removeFst (x:xs) y | x == y = xs
                   | otherwise = x : removeFst xs y

sortInts [] = []

reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = (reverseList xs) ++ [x]

splitList :: [a] -> [([a], [a])]
splitList [x,y] = [([x], [y])]
splitList (x:y:zs) = ([x], (y:zs)) : addLeft x (splitList (y:zs))
  where addLeft u [] = []
        addLeft u ((vs, ws): rest) = (u:vs, ws) : addLeft u rest

divisors :: Integer -> [(Integer,Integer)]
divisors n = [(d, quot n d) | d <- [1..k], rem n d == 0]
  where k = floor (sqrt (fromInteger n))


prime' :: Integer -> Bool
prime' = \n -> divisors n == [(1, n)]


--recurrence form of factorial function
fac 0 = 1
fac n = fac (n-1) * n

fac' n = product [x | x <- [1..n]]

sumMultiples3or5 :: [Int] -> Int
sumMultiples3or5 [] = 0
sumMultiples3or5 [x] = 0
sumMultiples3or5 (x:xs)
    | x `mod` 3 == 0 = x + sumMultiples3or5 xs
    | x `mod` 5 == 0 = x + sumMultiples3or5 xs
    | otherwise      = sumMultiples3or5 xs


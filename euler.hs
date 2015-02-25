sumMultiples3or5 :: [Int] -> Int
sumMultiples3or5 [] = 0
sumMultiples3or5 [x] = 0
sumMultiples3or5 (x:xs)
    | x `mod` 3 == 0 = x + sumMultiples3or5 xs
    | x `mod` 5 == 0 = x + sumMultiples3or5 xs
    | otherwise      = sumMultiples3or5 xs


fib :: Int -> Int
fib 1 = 1
fib 2 = 2
fib x = fib(x-1) + fib(x-2)

--evenValuesInFibonacci [1..33] for problem answer
evenValuesInFibonacci :: [Int] -> Int
evenValuesInFibonacci [] = 0
evenValuesInFibonacci [x] = 0
evenValuesInFibonacci (x:xs)
    | (fib x) `mod` 2 == 0 = fib x + evenValuesInFibonacci xs
    | otherwise = evenValuesInFibonacci xs

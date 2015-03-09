import System.IO

double x = x +x
quadruple x = double (double x)
factorial n = product [1..n]
average ns = sum ns `div` length ns

n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

mylast xs = take 1 (reverse xs)

add' :: Int -> (Int -> Int)
add' x y = x + y

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n],y <- [1..n],z <- [1..n],x^2 + y^2 == z^2  ]

factors n y = [x | x <- [1..y], x `mod` n == 0]

helloWorld :: IO ()
helloWorld = putStrLn "Hello, world!"

welcome :: String -> IO()
welcome name = do
    putStr ("Hello, ")
    putStr (name)
    putStr (", welcome")
    putStrLn ""

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

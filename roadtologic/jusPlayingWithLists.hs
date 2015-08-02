reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = (reverseList xs) ++ [x]

splitList :: [a] -> [([a], [a])]
splitList [x,y] = [([x], [y])]
splitList (x:y:zs) = ([x], (y:zs)) : addLeft x (splitList (y:zs))
  where addLeft u [] = []
        addLeft u ((vs, ws): rest) = (u:vs, ws) : addLeft u rest

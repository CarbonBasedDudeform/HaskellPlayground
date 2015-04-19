import Data.Char

ceaserEnc "" = return ""
ceaserEnc (x:xs) = do
	phrase <- (show (ord x) ++ show (ceaserEnc(xs)))
	return phrase

main = do
	putStrLn "Enter a phrase to encrypt using ceaser: "
	phrase <- getLine
	result <- (ceaserEnc phrase)
	putStrLn result
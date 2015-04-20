import System.IO

main = do
  playersName <- greet
  let p = Player playersName 1.0
  playGame p
  farewell

data Player = Player {
	name :: String,
	health :: Float
} deriving (Show)

greet = do
  putStrLn "What is your name?"
  name <- askName
  putStrLn ( "Welcome, " ++ (show $ name) )
  return name

askName = do
  name <- getLine
  return name

playGame player = do
	putStrLn ( "Unimplemented " ++ (show $ player) )

farewell = do
	putStrLn "Thanks for playing"

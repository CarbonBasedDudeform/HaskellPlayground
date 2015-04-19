import System.IO

main = do
  playersName <- greet
  p <- Player
  playGame
  farewell

data Player = Player {
	name :: String,
	health :: Float
} deriving (Show)

greet = do
  putStrLn "What is your name?"
  playerName <- askName
  putStrLn ( "Welcome, " ++ (show $ playerName) )
  return playerName

askName = do
  name <- getLine
  return name

playGame player = do
	putStrLn "Unimplemented " ++ player

farewell = do
	putStrLn "Thanks for playing"

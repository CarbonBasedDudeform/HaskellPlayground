import System.IO

main = do
  greet
  playGame
  farewell

greet = do
  putStrLn "What is your name?"
  playerName <- askName
  putStrLn ( "Welcome, " ++ (show $ playerName) )

askName = do
  name <- getLine
  return name

playGame = do
	putStrLn "Unimplemented"

farewell = do
	putStrLn "Thanks for playing"

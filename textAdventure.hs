import System.IO

--Data types used throughout
fullHealth = 1.0
fullStrength = 1.0

data Player = Player {
	name :: String,
	health :: Float,
  strength :: Float
} deriving (Show)

--props prefixed with e due to
-- http://stackoverflow.com/questions/24352280/haskell-multiple-declarations-of-x
data Enemy = Enemy {
  eName :: String,
  eHealth :: Float,
  eStrength :: Float
} deriving (Show)

--main functions
main = do
  playersName <- greet
  let p = Player playersName fullHealth fullStrength
  playGame p
  farewell

greet = do
  putStrLn "What is your name?"
  name <- askName
  putStrLn ( "Welcome, " ++ (show $ name) )
  return name

askName = do
  name <- getLine
  return name

levelOne player enemy = do
  putStrLn ( "Oh shit " ++ (show $ player) ++ " walks into a bar.")
  putStrLn ( "Has a few beers and pisses off")
  putStrLn (show $ enemy)

playGame player = do
  let boss = Enemy "Bob" 1.0 1.0
  levelOne player boss

farewell = do
	putStrLn "Thanks for playing"

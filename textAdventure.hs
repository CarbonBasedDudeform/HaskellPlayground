import System.IO
import System.Random

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
  name <- getInput
  putStrLn ( "Welcome, " ++ (show $ name) )
  return name

getInput = do
	input <- getLine
	return input

promptPlayerForAction = do
	putStrLn ("what ya gonna do?")
	putStrLn ("8---> ")
	action <- getInput
	return action

checkValidity action = do
	if action == "run" || action == "fight"
		then True
		else False

unknownAction enemy =
	"What? what the fuck is that? Do you speak english motherfucker 'cause what ain't not language I ever heard of\n"
	++ "While you were fucking around, " ++ (show $ (eName enemy)) ++ ", smashed you in the face with their fist.\n"
	++ "You lost " ++ show (10) ++ "health.\n"

decideOutcome chosenAction enemy =
	if (checkValidity chosenAction)
		then
			let outcome = "test" in return outcome
		else do
			let outcome = unknownAction enemy in return outcome

levelOne player enemy = do
	putStrLn ("Oh shit " ++ (show $ (name player)) ++ " walks into a bar.")
	putStrLn ("Has a few beers and pisses off " ++ (show $ (eName enemy)) )
	chosenAction <- promptPlayerForAction
	putStrLn ("So you're gonna " ++ (show $ chosenAction) ++ ", eh?")
	outcome <- decideOutcome chosenAction enemy
	putStrLn outcome


playGame player = do
  let boss = Enemy "Bob" 1.0 1.0
  levelOne player boss

farewell = do
	putStrLn "Thanks for playing"

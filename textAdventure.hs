import System.IO
import System.Random

--Data types used throughout
fullHealth = 1.0
fullStrength = 1.0

--random number generator
--generator <- newStdGen

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

generateRandomDamage weight =
	randomRIO (0, weight) :: IO Float

unknownAction enemy dmg =
	"What? what the fuck is that? Do you speak english motherfucker 'cause what ain't not language I ever heard of\n"
	++ "While you were fucking around, " ++ (show $ (eName enemy)) ++ ", smashed you in the face with their fist.\n"
	++ "You lost " ++ (show dmg)  ++ " health.\n"

processAction action enemy =
	if action == "fight"
		then
			"You have decided to fight."
		else
			"You run away like a coward."

decideOutcome chosenAction enemy =
	if (checkValidity chosenAction)
		then
			let outcome = processAction chosenAction enemy in return outcome
		else do
			dmg <- generateRandomDamage 10
			let outcome = unknownAction enemy dmg in return outcome

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

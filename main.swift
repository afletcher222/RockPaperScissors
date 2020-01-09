print("Rock paper Scissors");
print("Enter 1 for rock");
print("Enter 2 for scissors");
print("Enter 3 for paper");
var playerScore = 0;
var computerScore = 0;
var winner = false;

while winner == false {

let input = readLine();

func CheckForWin(){
  if(playerScore == 3){
    winner = true;
    print("player wins!")
  }
  else if (computerScore == 3)
  {
    winner = true;
    print("computer wins!")
  }
  else{

  }
}

if let choice = input{
  if let playerChoice = Int(choice){ 
    if playerChoice > 0 && playerChoice < 4{
  let computerChoice = Int.random(in: 1...3);

  switch computerChoice{
    case 1:
      if playerChoice == 1{
        print("Both players picked rock, Tied!");
        print("Score is: Computer \(computerScore) Player \(playerScore)")
      }
      else if playerChoice == 2{
        print("player picked scissors, computer picked rock, computer wins!");
        computerScore += 1;
        print("Score is: Computer \(computerScore) Player \(playerScore)")
        CheckForWin();
      }
      else if playerChoice == 3{
        print("player picked paper, computer picked rock, player wins!")
        playerScore += 1;
        print("Score is: Computer \(computerScore) Player \(playerScore)")
        CheckForWin();
      }
      case 2:
      if playerChoice == 1{
        print("Player picked Rock, computer picked scissors, player wins!");
        playerScore += 1;
        print("Score is: Computer \(computerScore) Player \(playerScore)")
        CheckForWin();
      }
      else if playerChoice == 2{
        print("Both players picked scissors, tied!");
        print("Score is: Computer \(computerScore) Player \(playerScore)")
      }
      else if playerChoice == 3{
        print("player picked paper, computer picked scissors, computer wins!");
        computerScore += 1;
        print("Score is: Computer \(computerScore) Player \(playerScore)")
        CheckForWin();
      }
      case 3:
      if playerChoice == 1{
        print("Player picked Rock, computer picked paper, computer wins!");
        computerScore += 1;
        print("Score is: Computer \(computerScore) Player \(playerScore)")
        CheckForWin();
      }
      else if playerChoice == 2{
        print("Player picked scissors, computer picked paper, Player wins");
        playerScore += 1;
        print("Score is: Computer \(computerScore) Player \(playerScore)")
        CheckForWin();
      }
      else if playerChoice == 3{
        print("Both players picked paper, Tied!");
        print("Score is: Computer \(computerScore) Player \(playerScore)")
      }
      default:
      print("no numbers")
    }
    }
    else{
      print("You didn't enter a number between 1-3, please enter a number between 1, 2, and 3!");
    }
  }
  else{
      print("You didn't enter a number between 1-3, please enter a number between 1, 2, and 3!");
    }
}
}


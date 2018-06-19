# r = rock, p = paper, sc = scissors, sp = spock, l = Lizard

def win?(first, second)
  (first == 'r' && second == 'sc') ||
    (first == 'r' && second == 'l') ||
    (first == 'p' && second == 'r') ||
    (first == 'p' && second == 'sp') ||
    (first == 'sc' && second == 'p') ||
    (first == 'sc' && second == 'p') ||
    (first == 'sp' && second == 'r') ||
    (first == 'sp' && second == 'sc') ||
    (first == 'l' && second == 'sp') ||
    (first == 'l' && second == 'p')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("Its a tie!")
  end
end

def display_scores(score, player, computer)
  if win?(player, computer)
    score['player_score'] += 1
  elsif win?(computer, player)
    score['computer_score'] += 1
  end
  prompt(score)
end

def display_grand_champion(player, computer)
  if win?(player, computer)
    prompt("Congratulations! You are the grand champion!")
  else
    prompt("The Computer is the grand champion!")
  end
end

def prompt(message)
  puts("=>#{message}")
end

VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  'sc' => 'scissors',
                  'sp' => 'spock',
                  'l' => 'lizard' }

loop do
  score = { 'player_score' => 0, 'computer_score' => 0 }
  choice = ''
  until score['player_score'] == 5 || score['computer_score'] == 5
    loop do
      prompt("Choose one(r,p,sc, sp or l):
      #{VALID_CHOICES}")
      choice = gets.chomp.downcase

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice")
      end
    end

    computer_choice = VALID_CHOICES.keys.sample
    prompt("You chose #{choice}, computer chose #{computer_choice}")
    puts "----------------------------------------------"
    display_results(choice, computer_choice)
    puts "----------------------------------------------"
    display_scores(score, choice, computer_choice)
    puts "----------------------------------------------"
  end

  display_grand_champion(choice, computer_choice)
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")

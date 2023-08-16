VALID_CHOICES = %w(rock paper scissors lizard spock)

def test_method
  prompt('test message')
end

# test_method

def prompt(message)
  puts "=> #{message}"
end

# test_method

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors'))
end

def defeat_message(choice1, choice2)
  if (choice1 == 'rock' && choice2 == 'lizard') || (choice2 == 'rock' && choice1 == 'lizard')
    'Rock crushes lizard.' 
  elsif (choice1 == 'rock' && choice2 == 'scissors') || (choice2 == 'rock' && choice1 == 'scissors')
    'Rock crushes scissors.'
  elsif (choice1 == 'paper' && choice2 == 'rock') || (choice2 == 'paper' && choice1 == 'rock')
    'Paper covers rock.'
  elsif (choice1 == 'paper' && choice2 == 'spock') || (choice2 == 'paper' && choice1 == 'spock')
    'Paper disproves Spock.'
  elsif (choice1 == 'scissors' && choice2 == 'paper') || (choice2 == 'scissors' && choice1 == 'paper')
    'Scissors cuts paper.'
  elsif (choice1 == 'scissors' && choice2 == 'lizard') || (choice2 == 'scissors' && choice1 == 'lizard')
    'Scissors decapitates lizard.'
  elsif (choice1 == 'lizard' && choice2 == 'spock') || (choice2 == 'lizard' && choice1 == 'spock')
    'Lizard poisons Spock.'
  elsif (choice1 == 'lizard' && choice2 == 'paper') || (choice2 == 'lizard' && choice1 == 'paper')
    'Lizard eats paper.'
  elsif (choice1 == 'spock' && choice2 == 'rock') || (choice2 == 'spock' && choice1 == 'rock')
    'Spock vaporizes rock.'
  elsif (choice1 == 'spock' && choice2 == 'scissors') || (choice2 == 'spock' && choice1 == 'scissors')
    'Spock smashes scissors.'
  else
    'Nothing happened..'
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won! 🥳')
  elsif win?(computer, player)
    prompt('Computer won.. 😥')
  else
    prompt("It's a tie! 😐")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  sleep(1)

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  sleep(1)

  prompt(defeat_message(choice, computer_choice))

  display_results(choice, computer_choice)

  prompt('Do you want to play again? (Y to play again)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Goodbye!')

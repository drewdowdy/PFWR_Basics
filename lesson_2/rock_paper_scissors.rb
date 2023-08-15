VALID_CHOICES = %w(rock paper scissors)

def test_method
  prompt('test message')
end

# test_method

def prompt(message)
  puts "=> #{message}"
end

# test_method

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
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

  display_results(choice, computer_choice)

  prompt('Do you want to play again? (Y to play again)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Goodbye!')



def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.chomp 
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card 
  display_card_total(total)
  return total 
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer == "s"
  elsif answer =="h"
    return total = total + deal_card 
  else 
    return invalid_command
  end 
  return total 
end 

def invalid_command
  puts "Please enter a valid command" 
end

def game_play(total)
  loop do
    if total < 21
      total = hit?(total)
      display_card_total(total)
    elsif total == 21
      puts "Congrats! You win!"
      break 
    elsif total > 21 
      end_game(total)
      break
    end 
  end 
end 

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  #hit?(total)
  game_play(total)
end
    

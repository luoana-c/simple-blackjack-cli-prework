def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = 1 + rand(11)
  number
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal1 = deal_card
  deal2 = deal_card
  card_total = deal1 + deal2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input

  until input == 'h' || input == 's'
    invalid_command
    prompt_user
    input = get_user_input
  end
  
  if input == "h"
    card_total += deal_card
  elsif input == "s"
    card_total
  end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total <= 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    

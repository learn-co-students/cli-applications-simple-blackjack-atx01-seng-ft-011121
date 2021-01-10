def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = Random.new
  card.rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card

  card_total = card_one + card_two

  display_card_total(card_total)

  card_total
end

def hit?(num)
  # code hit? here
  prompt_user()
  decision = get_user_input()
  card_total = num

  if decision == 'h'
    card_total += deal_card
  elsif decision == 's'
    card_total = card_total
  else
    invalid_command()
    prompt_user()
    decision = get_user_input()
    if decision == 'h'
      card_total += deal_card
    end
  end

  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  card_value = initial_round()

  until card_value > 21 do

    new_value = hit?(card_value)
    card_value = new_value

    display_card_total(card_value)
  end
  
end_game(card_value)

end
    

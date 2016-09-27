#display options for betting, assign each a number
#ask user for number
#ask user for bet
#have computer roll three Dice
#create if statement for each bet

puts '''
Choose a bet type:
1: Single die
2: Any triple
3: Big
4: Small
5: Field
'''
print "Enter number of bet type:"
type = gets.chomp.to_i
roll = [rand(7), rand(7), rand(7)]

def sum(arr)
  return arr[0] + arr[1] + arr[2]
end

print "How much do you bet?"
amt = gets.chomp.to_i

if type == 1
  print "What number will appear?"
  bet = gets.chomp.to_i
  puts "The roll is #{roll}."
  if roll.include?(bet)
    win = true
  else
    win = false
  end
elsif type == 2
  print "Enter a number that all three dice will show."
  bet = gets.chomp.to_i
  puts "The roll is #{roll}."
  if roll[0] == bet && roll[1] == bet && roll[3] == bet
    win = true
  else
    win = false
  end
elsif type == 3
  puts "The roll is #{roll}.  The sum is #{sum(roll)}"
  if sum(roll) >= 11
    win = true
  else
    win = false
  end
elsif type == 4
  puts "The roll is #{roll}. The sum is #{sum(roll)}"
  if sum(roll) <= 10
    win = true
  else
    win = false
  end
elsif type == 5
  puts "The roll is #{roll}. The sum is #{sum(roll)}"
  if sum(roll) <= 8 || sum(roll) >= 12
    win = true
  else
    win = false
  end
end

if win
  puts "You win!"
else
  puts "You lose!"
end

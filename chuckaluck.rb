require './scan'

puts '''
Choose a bet type:
1: Single die
2: Any triple
3: Big
4: Small
5: Field
'''
print "Enter number of bet type:"
type = scan.chomp.to_i
while type > 5 || type < 1
  print "Enter a number 1 to 5: "
  type = scan.chomp.to_i
end

roll = [rand(7), rand(7), rand(7)]

def sum(arr)
  return arr[0] + arr[1] + arr[2]
end

money = 100


print "How much do you bet? You have $#{money}."
amt = scan.chomp.to_i
while amt > money
  print "You don't have that much money! Enter a smaller number: "
  amt = scan.chomp.to_i
end
money -= amt

if type == 1
  print "What number will appear?"
  bet = scan.chomp.to_i
  puts "The roll is #{roll}."
  if roll.include?(bet)
    win = true
  else
    win = false
  end
elsif type == 2
  print "Enter a number that all three dice will show."
  bet = scan.chomp.to_i
  puts "The roll is #{roll}."
  if roll[0] == bet && roll[1] == bet && roll[3] == bet
    win = true
  else
    win = false
  end
elsif type == 3
  puts "The roll is #{roll}.  The sum is #{sum(roll)}."
  if sum(roll) >= 11
    win = true
  else
    win = false
  end
elsif type == 4
  puts "The roll is #{roll}. The sum is #{sum(roll)}."
  if sum(roll) <= 10
    win = true
  else
    win = false
  end
elsif type == 5
  puts "The roll is #{roll}. The sum is #{sum(roll)}."
  if sum(roll) <= 8 || sum(roll) >= 12
    win = true
  else
    win = false
  end
end

if win
  puts "You win!"
  if type == 2
    money += (31 * amt)
  else
    money += (2 * amt)
  end
else
  puts "You lose!"
end

puts "You now have $#{money}."


if money == 0
  puts "You're broke!"
end

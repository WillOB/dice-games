target = 3
die = rand(6)
puts "Rolling..."
rolls = 1
while (target != die)
  puts "Rolling..."
  die = rand(6)
  rolls += 1
end
puts rolls

#Dice games
def boston
r1 = [rand(7), rand(7), rand(7)]
r2 = [rand(7), rand(7), rand(7)]
r3 = [rand(7), rand(7), rand(7)]
puts "Roll one: #{r1}. Roll two: #{r2}. Roll three #{r3}."
total = r1.max + r2.max + r3.max
puts "Your total is #{total}"
c1 = [rand(7), rand(7), rand(7)]
c2 = [rand(7), rand(7), rand(7)]
c3 = [rand(7), rand(7), rand(7)]
puts "Computer roll one: #{c1}. Roll two: #{c2}. Roll three: #{c3}."
computer_total = c1.max + c2.max + c3.max
puts "Computer's total is #{computer_total}"
if computer_total > total
  puts "Computer wins."
elsif total > computer_total
  puts "You win!"
else
  puts "It's a tie!"
end
end
boston

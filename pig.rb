require './scan'

points1 = 0
points2 = 0
while points1 < 100 && points2 < 100
  roll1 = rand(7)
  puts "Player one rolled #{roll1}."
  while roll1 != 1
    points1 += roll1
  end
  puts "Player one has #{points1} points. It's player 2's turn."
  roll2 = rand(7)
  puts "Player two rolled #{roll2}."
  while roll2 != 2
    points2 += roll2
  end
  puts "Player two has #{points2} points. Back to player 1!"
end

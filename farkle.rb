def farkle
  points = 0
  target = 10000
  while target > points
    roll = [rand(7), rand(7), rand(7), rand(7), rand(7), rand(7)]
    puts "You rolled #{roll}"

    if roll.count(1) == 3
      points += 1000
    elsif roll.count(6) == 3
      points += 600
    elsif roll.count(5) == 3
      points += 500
    elsif roll.count(4) == 3
      points += 400
    elsif roll.count(3) == 3
      points += 300
    elsif roll.count(2) == 3
      points +=200
    elsif roll.count(1) == 1
      points += 100
    elsif roll.count(5) == 1
      points += 50
    end
    return points
    puts "You have #{points} points. Rolling again."
  end




end

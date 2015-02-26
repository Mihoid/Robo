class Robo

  def place
    print "Enter x, please. x="
	x = gets.to_i until ((1..5).include?(x))
	print "Enter y, please. y="
	y = gets.to_i until ((1..5).include?(y))
	print "Enter vector North, South, East or West. vector is "
	vector = gets.chomp.capitalize until (vector == "North" || vector =="South" || vector =="East" || vector =="West")
  end
  
  def move
	x = x + 1 if ((1...5).include?(x)) || (vector == "West")
	x = x - 1 if ((1...5).include?(x)) || (vector == "East")
	y = y + 1 if ((1...5).include?(y)) || (vector == "North")
	y = y - 1 if ((1...5).include?(y)) || (vector == "South")
  end

  def right
    vector == "West" if vector == "North"
    vector == "South" if vector == "West"
    vector == "East" if vector == "South"
    vector == "North" if vector == "East"
  end

  def left
	vector == "West" if vector == "South"
    vector == "South" if vector == "East"
    vector == "East" if vector == "North"
    vector == "North" if vector == "West"	
  end
end

robo = Robo.new

robo.place
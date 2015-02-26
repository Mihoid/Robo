class Robo
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

x = Robo.new
y = Robo.new
vector = Robo.new

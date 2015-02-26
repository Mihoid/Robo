class Robo

  def place(x, y, vector)
  	@x = x
	@y = y
	@vector = vector
  end
  
  def move
   	(@x = @x + 1) if ((1...5).include?(@x)) || (@vector == "West")
	(@x = @x - 1) if ((1...5).include?(@x)) || (@vector == "East")
	(@y = @y + 1) if ((1...5).include?(@y)) || (@vector == "North")
	(@y = @y - 1) if ((1...5).include?(@y)) || (@vector == "South")
	puts @x, @y, @vector
  end

  def right
    case
    when @vector = "East" then @vector == "North"
    when @vector = "North" then @vector == "West"
    when @vector = "West" then @vector == "South"
    when @vector = "South" then @vector == "East"
    end
  end
  

  def left
    vector == "West" if vector == "South"
    vector == "South" if vector == "East"
    vector == "East" if vector == "North"
    vector == "North" if vector == "West"	
  end
  
end


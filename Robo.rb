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
    @vector = case @vector	
    when "North" then "East" 
    when "West" then "North" 
    when "South" then "West"
    when "East" then "South"
    end
  end
  

  def left
    @vector = case @vector	
    when "North" then "West" 
    when "West" then "South" 
    when "South" then "East"
    when "East" then "North"
    end	
  end
  
end


class Robo

  def place(x, y, vector)
  	@x = x
	@y = y
	@vector = vector
  end
  
  def move
   	if (((0...4).include?(@x)) && (@vector == "West"))
	  (@x = @x + 1)
	elsif (((1..4).include?(@x)) && (@vector == "East"))
	  (@x = @x - 1)
	elsif (((0...4).include?(@y)) && (@vector == "North"))
	  (@y = @y + 1)
	elsif (((1..4).include?(@y)) && (@vector == "South"))
	  (@y = @y - 1)
	end
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


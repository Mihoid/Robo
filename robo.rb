class Robo
DIRECTIONS = %w(North East South West)

def place(x, y, vector)
  if ((0..4).include?(x.to_i) && (0..4).include?(y.to_i) && (/North|South|East|West/ === vector.capitalize!))
  @x = x.to_i
  @y = y.to_i
  @vector = DIRECTIONS.index(vector)
end
end

def move
  case DIRECTIONS[@vector]
  when "West" then @x = @x - 1
  when "East" then @x = @x + 1
  when "North" then @y = @y + 1
  when "South" then @y = @y - 1
  end
end

def rotate(inc)
  @vector = @vector + inc
  @vector = 0 if @vector > 3
  @vector = 3 if @vector < 0 
end

def right
  rotate(1)
end

def left
  rotate(-1)
end
end

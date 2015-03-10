class Robo

DIRECTION = %w(North East South West)

def place(x, y, vector)
  if (/[0-4]/ === x) && (/[0-4]/ === y) && (/[NorthSouthWestEast]/ === vector.capitalize!)
  @x = x.to_i
  @y = y.to_i
  @vector = DIRECTION.index(vector)
  end
end
  
def move
  case DIRECTION[@vector]
  when "South"
    @x = @x - 1 if @x > 0
  when "East"
    @x = @x + 1 if @x < 4
  when "North"
    @y = @y + 1 if @y < 4
  when "West"
    @y = @y - 1 if @y > 0
  end
end

def rotate(inc)
  @vector = @vector + inc
end

def right
  rotate(1)
  @vector = 0 if @vector > 4
end

def left
  rotate(-1)
  @vector = 4 if @vector < 0
end
  
end


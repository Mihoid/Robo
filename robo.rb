class Robo
  DIRECTIONS = %w(North East South West)

  def place(x, y, vector)
    @x = x.to_i
    @y = y.to_i
    @vector = DIRECTIONS.index(vector)
  end

  def move
    case DIRECTIONS[@vector]
    when "West" then @x = @x - 1
    when "East" then @x = @x + 1
    when "North" then @y = @y + 1
    when "South" then @y = @y - 1
    end
  end

  def right
    rotate(1)
  end

  def left
    rotate(-1)
  end
end

def rotate(inc)
  @vector = @vector + inc
end
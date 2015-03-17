class Robo
  DIRECTIONS = %w(north east south west)
  SIZE = 0..4
  INCREMENT = {"north" => [0,1], "east" => [1,0], "south" => [0,-1], "west" => [-1,0]}

  class Error < RuntimeError
  end

  attr_reader(:x, :y, :vector)

  def place(x, y, vector)
    @x = x.to_i
    @y = y.to_i
    @vector = DIRECTIONS.index(vector)
    raise Error ,"Incorrect data" unless placed?
  end

  def move
    raise Error unless placed?
    x, y = INCREMENT[DIRECTIONS[@vector]] if !@vector.nil?
    if SIZE.include?(@x + x) && SIZE.include?(@y + y)
      @x += x
      @y += y
    end
  end

  def right
    rotate(1)
  end

  def left
    rotate(-1)
  end

  def report
    raise Error unless placed?
    puts "Robo stay on x=#{@x}, y=#{@y}, vector #{DIRECTIONS[@vector]}"
  end

  private

  def rotate(inc)
    @vector = (@vector + inc) % 4
  end

  def placed?
    !@vector.nil? && SIZE.include?(@x) && SIZE.include?(@y)
  end
end

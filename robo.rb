class Robo
  DIRECTIONS = %w(north east south west)
  SIZE = 0..4
  INCREMENT = {"north" => [0,1], "east" => [1,0], "south" => [0,-1], "west" => [-1,0]}

  def place(x, y, vector)
    @x = x.to_i
    @y = y.to_i
    @vector = DIRECTIONS.index(vector)
    if @vector.nil? || !SIZE.include?(@x) || !SIZE.include?(@y)
      raise "Incorrect data"
    end
    puts "#{@x}    #{@y}     #{@vector}"
  end

  def move
    x, y = INCREMENT[DIRECTIONS[@vector]]
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
    puts "Robo stay on x=#{@x}, y=#{@y}, vector #{DIRECTIONS[@vector]}"
  end

  private

  def rotate(inc)
    @vector = (@vector + inc) % 4
  end
end

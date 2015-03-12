class Robo
  DIRECTIONS = %w(north east south west)
  RANGE = 0..4
  HASH = {"north" => [0,1], "east" => [1,0], "south" => [0,-1], "west" => [-1,0]}

  def place(x, y, vector)
    @x = x.to_i
    @y = y.to_i
    @vector = DIRECTIONS.index(vector)
    print @x, @y, @vector
    if @vector.nil? || !RANGE.include?(@x) || !RANGE.include?(@y)
      raise "incorrect data"
    end
  end

  def move
    if RANGE.include?(@x + HASH[DIRECTIONS[@vector]][0]) && RANGE.include?(@y + HASH[DIRECTIONS[@vector]][1])
      @x, @y = @x + HASH[DIRECTIONS[@vector]][0], @y + HASH[DIRECTIONS[@vector]][1] 
    end
    puts "x=#{@x}, y=#{@y}, vector #{DIRECTIONS[@vector]}"
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

class Robo
  DIRECTIONS = %w(north east south west)
  RANGE = 0..4

  def place(x, y, vector)
    @x = x.to_i
    @y = y.to_i
    @vector = DIRECTIONS.index(vector)
    if @vector.nil? || !RANGE.include?(@x) || !RANGE.include?(@y)
      raise "incorrect data"
    end
  end

  def move
    case DIRECTIONS[@vector]
    when "West" 
      @x = @x - 1 if @x > 0
    when "East" 
      @x = @x + 1 if @x < 4
    when "North"
      @y = @y + 1 if @y < 4
    when "South" 
      @y = @y - 1 if @y > 0
    end
  end

  def right
    rotate(1)
    @vector = 0 if @vector > 3
  end

  def left
    rotate(-1)
    @vector = 3 if @vector < 0
  end

  def report
    puts "Robo stay on x=#{@x}, y=#{@y}, vector #{DIRECTIONS[@vector]}"
  end
  
  private

  def rotate(inc)
    @vector = @vector + inc
  end
end

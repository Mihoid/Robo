require_relative 'robo'
require 'test/unit'

class TestRobo < Test::Unit::TestCase
  def setup
    @robotest = Robo.new
  end

  def test_move
    @robotest.place(1, 1, "north")
    assert_not_nil(@robotest.x)
    assert_not_nil(@robotest.y)
    assert_not_nil(@robotest.vector)
  end
end

require_relative 'robo'
require 'test/unit'

class TestRobo < Test::Unit::TestCase
  def setup
    @robotest = Robo.new
  end

  def test_place
    @robotest.place(1, 1, "north")

    assert_equal(1, @robotest.x)
    assert_equal(1, @robotest.y)
    assert_equal(0, @robotest.vector)

    assert_raises(ArgumentError) { @robotest.place(5, -1, "robo") }
  end
  
  def test_move
    assert_raises(Robo::Error) { @robotest.move }
  end
  
  def test_report
    assert_raises(Robo::Error) { @robotest.report }
  end
end

require("minitest/autorun")
require('minitest/rg')
require_relative('../models/rpsgame')

class CustomerTest < MiniTest::Test

  def test_win
    expected = RPSGame.check_win("rock", "paper")
    assert_equal("Player 2 wins with paper!", expected)
  end

  def test_draw
    expected = RPSGame.check_win("rock", "rock")
    assert_equal("It's a Draw!", expected)
  end

end

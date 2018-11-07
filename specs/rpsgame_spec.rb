require("minitest/autorun")
require('minitest/rg')
require_relative('../models/rpsgame')

class GameTest < MiniTest::Test

  def test_win
    expected = RPSGame.check_win("rock")
    assert_equal("Computer wins with paper!", expected)
  end

  def test_draw
    expected = RPSGame.check_win("paper")
    assert_equal("It's a Draw!", expected)
  end

  def test_two_human_draw
    expected = RPSGame.check_win2("paper", "paper")
    assert_equal("It's a Draw!", expected)
  end

end

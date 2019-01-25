require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest_a = Guest.new("Kira", 100, "song_1")
  end

  def test_guest_name
    assert_equal("Kira", @guest_a.name)
  end

  def test_favourite_song
    assert_equal("song_1", @guest_a.favourite_song)
  end

  def test_money_in_the_wallet
    assert_equal(100, @guest_a.wallet)
  end

  def test_money_deducted
    result = @guest_a.money_deducted(10)
    assert_equal(90, result)
  end


end

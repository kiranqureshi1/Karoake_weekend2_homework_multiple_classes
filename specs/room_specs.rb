require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup

    @guest_1 = Guest.new("kira", 100, "song_1")
    @guest_2 = Guest.new("Kate", 200, "song_2")
    @guest_3 = Guest.new("Paul", 300, "song_3")

    @song_1 = Song.new("song_1")
    @song_2 = Song.new("song_2")
    @song_3 = Song.new("song_3")

    @room_1 = Room.new([@song_1, @song_2, @song_3], [@guest_1, @guest_2, @guest_3], 100, 10, 1000)
  end

  def test_add_guest
    guest_4 = Guest.new("Laura", 400, "song_4")
    result = @room_1.add_guest(guest_4)
    assert_equal(4, result)
  end

  def test_remove_guest
    result = @room_1.remove_guest
    assert_equal(2, result)
  end

  def test_add_song
    song_4 = Song.new("song_4")
    result = @room_1.add_song(song_4)
    assert_equal(4, result)
  end

  def test_guest_favourite_song
    result = @room_1.guest_favourite_song(@guest_2)
    assert_equal(true, result)
  end

  def test_money_exchange
    guest_4 = Guest.new("Laura", 400, "song_4")
    result = @room_1.add_guest(guest_4)
    assert_equal(1010, @room_1.till)
  end




end

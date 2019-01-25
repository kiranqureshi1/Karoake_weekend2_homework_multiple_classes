require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def test_song_name
    song_a = Song.new("song_a")
    assert_equal("song_a", song_a.name)
  end


end

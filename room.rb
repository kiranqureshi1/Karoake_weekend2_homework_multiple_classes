class Room

  attr_reader :maximum_space, :entry_fee
  attr_accessor :song_list, :guests_list, :till

  def initialize(song_list, guests_list, maximum_space, entry_fee, till)
    @song_list = song_list
    @guests_list = guests_list
    @maximum_space = maximum_space
    @entry_fee = entry_fee
    @till = till
  end

  def add_guest(guest)
    if @maximum_space >= @guests_list.length && @entry_fee <= guest.wallet
    @guests_list << guest
    guest.money_deducted(@entry_fee)
    @till += @entry_fee
    return @guests_list.length

  end
  end

  def remove_guest
    @guests_list.pop()
    return @guests_list.length
  end


  def add_song(song)
    @song_list << song
    return @song_list.count
  end

  def guest_favourite_song(guest)
    for song in @song_list
      if song == guest.favourite_song
      end
    end
    return true
  end


end

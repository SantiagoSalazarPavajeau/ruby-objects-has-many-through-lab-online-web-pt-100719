require 'pry'
class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    #@songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def new_song(song_name, genre)
    #binding.pry
    song = Song.new(song_name, self, genre)
    self.songs = song
  end
  
  # Iterates over artist's songs
  # Collects genre of each song
  def genres
    songs.map {|song| song.genre}
  end

  
end
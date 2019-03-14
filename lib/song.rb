require 'pry'

class Song
  @@all = []
  attr_accessor :name

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(file_name)
    song_info = file_name.split(" - ")
    binding.pry
    new_song = self.new(song_info[1])
    new_song.artist = song_info[0]
    new_song.genre = song_info[2].split(".")[0]
    @@all << new_song
  end
end

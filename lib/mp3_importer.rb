require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    long_file_paths = Dir["#{@path}/*.mp3"]
    long_file_paths.each do |file_path|
      @files << file_path.split("/").last
    end
    @files
  end

  def import
    @files.each do |file_name|
      song_info = file_name.split(" - ")
      binding.pry
      new_song = Song.new(song_info[1])
      new_song.artist = song_info[0]
      new_song.genre = song_info[2].split(".")[0]
    end
  end
end

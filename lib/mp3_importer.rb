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
    binding.pry
  end
end

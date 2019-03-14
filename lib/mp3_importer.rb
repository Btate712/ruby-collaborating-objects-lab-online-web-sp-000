class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    # @path is a string that indicates the directory location, not an array,
    # so the code below doesn't work.  Need to figure out how to access the files
    # in the directory.
    @files = Dir["#{@path}/*.mp3"]
    binding.pry

  end
end

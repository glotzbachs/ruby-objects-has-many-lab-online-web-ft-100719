class Artist
attr_accessor :name, :songs
# attr_reader :songs

  def initialize(name)
    @name=name
    @songs=[]
  end
  
  def add_song(song)
    song.artist=self
    @songs<< song unless @songs.include?(song)
  end
  
  def add_song_by_name(song_name)
    song=Song.new(song_name)
    self.add_song(song)
  end
  
  def self.song_count
    Song.all.size
  end
  
end
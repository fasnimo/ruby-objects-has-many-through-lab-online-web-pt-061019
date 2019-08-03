class Artist
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |music|
      music.artist == self
    end
  end

  def new_song(name, genre)
    songs = Song.new(name, self, genre)
    self.songs.last
  end

  def genres
    Song.all.map do |g|
      g.genre
    end
  end

end

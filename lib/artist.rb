class Artist
  attr_reader
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song (name, genre)
    new_song = Song.new(name, genre)
    new_song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    Song.all.collect do |song|
      if song.artist == self
        song.genre
      end
    end
  end


end

class Song
  
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def artist_name
    self.artist.name if self.artist != nil
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

end
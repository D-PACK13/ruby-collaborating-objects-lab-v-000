class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs << song
  end
  
  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end 
  
  def self.find_by_name(name)
  	self.all.detect{|artist| artist.name == name}
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def save
    @@all << self
  end
  
  def print_songs 
    self.songs.each {|song| song.name}
  end

end
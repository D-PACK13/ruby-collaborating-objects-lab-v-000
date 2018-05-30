class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs << song
  end
  
  def self.create_by_name(name)
  	@name = name
	  @@all << self.new(@name)
  	self.all.detect{|song| song.name == name}
  end 
  
  def self.find_by_name(name)
  	@name = name
  	self.all.detect{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def save
    self.class.all << self
  end

  
end
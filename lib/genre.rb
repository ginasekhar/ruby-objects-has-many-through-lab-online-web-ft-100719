class Genre 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  
  def songs 
    Song.all.select {|song| song.genre == self }
  end
  
  def self.all
    @@all
  end
  
  def artists 
    all_artists = []
    Song.all.select do |song| 
       if song.genre == self 
         all_artists << song.artist
       end
     end
    all_artists   
  end
  
end
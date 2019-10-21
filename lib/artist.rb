class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
  def songs 
    #return all songs associated with this Artist
    Song.all.select {|song| song.artist == self }
  end
  
  def new_song(name, genre)
    #given a name and genre, creates a new song #associated with that artist
     Song.new(name, self, genre)
  end 

  def genres 
    all_my_genres = []
    Song.all.select do |song| 
      if song.artist == self
        all_my_genres << song.genre
      end
    end
    all_my_genres
  end
  
  def self.all 
    @@all
  end
  
end
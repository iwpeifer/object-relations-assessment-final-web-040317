# Please copy/paste all three classes into this file to submit your solution!

class Movie
  attr_accessor :title, :ratings, :viewers

  ALL = []

  def initialize(title)
    @title = title
    @ratings = []
    @viewers = []
    ALL << self
  end

  def self.all
  	ALL
  end

  def self.find_by_title(title)
  	ALL.find {|movie| movie.title.downcase = title.downcase}
  end

  def average_rating
  	score_array = self.ratings.map{|rating| rating.score}
  	score_array.inject{|sum, rating| sum + rating }.to_f / ratings.size
  end

end

### ### ### ### ### ###

class Rating

  attr_accessor :score, :movie, :viewer

  ALL = []

  def initialize(movie, score, viewer)
  	@movie = movie
  	@score = score
  	@viewer = viewer
  	viewer.ratings << self
  	movie.ratings << self
  	movie.viewers << self.viewer
  	ALL << self
  end

  def self.all
  	ALL
  end
  
end

### ### ### ### ### ###

class Viewer
  attr_accessor :first_name, :last_name, :ratings

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @ratings = []
    ALL << self
  end

  def self.all
  	ALL
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
  	ALL.find {|viewer| viewer.full_name.downcase == name.downcase}
  end

  def create_rating(movie, score)
  	Rating.new(movie, score, self)
  end

end
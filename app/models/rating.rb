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

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

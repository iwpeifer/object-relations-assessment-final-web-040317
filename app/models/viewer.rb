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

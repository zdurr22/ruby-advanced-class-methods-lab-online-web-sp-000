class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    self.all << song
    song
  end

  def self.new_by_name(title)
    song = Song.new
    song.name = title
    song
  end

  def self.create_by_name(title)
    song = self.create
    song.name = title
    song
  end

  def self.find_by_name(title)
    answer = self.all.detect {|s| s.name == title}
    answer
  end

  def self.find_or_create_by_name(title)
    answer = self.find_by_name(title)
    if answer
      return answer
    else
      self.create_by_name
    end
  end



end

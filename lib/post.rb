class Post

  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def author_name
    self.author.name if self.author != nil
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

end
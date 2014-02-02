class Post < ActiveRecord::Base
  attr_accessible :author, :content, :title

  validates_presence_of :author
  validates_presence_of :content
  validates_presence_of :title

  def timestamp
    self.created_at.strftime('%I:%M %P on %B %d, %Y')
  end
end

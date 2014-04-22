class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body

  def snippet
    "#{body[0..140]}..."
  end
end

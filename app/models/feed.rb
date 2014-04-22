require 'pry'
class Feed < ActiveRecord::Base
  has_many :entries
  has_many :categorizations
  has_many :categories, through: :categorizations

  validates_presence_of :title
  validates_presence_of :url
  validates_presence_of :image

  def update_feed
    feed = Feedjira::Feed.fetch_and_parse url
    Entry.add_entries(feed.entries, id)
  end

  def self.update_all
    Feed.all.each do |feed|
      feed.update_feed
    end
  end
end

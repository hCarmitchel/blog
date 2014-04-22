require 'pry'

class Entry < ActiveRecord::Base
  belongs_to :feed
  has_many :categories, through: :feed

  def self.add_entries(entries, feed_id)

    entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :title         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id,
          :image        => entry.image,
          :feed_id      => feed_id
        )
      end
    end
  end
end

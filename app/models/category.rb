class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :feeds, through: :categorizations
end

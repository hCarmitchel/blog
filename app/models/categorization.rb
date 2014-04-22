class Categorization < ActiveRecord::Base
  belongs_to :feed
  belongs_to :category
end

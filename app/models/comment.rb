class Comment < ActiveRecord::Base
  attr_accessible :author, :location, :message
  belongs_to :location
end

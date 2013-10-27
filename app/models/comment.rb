class Comment < ActiveRecord::Base
  attr_accessible :author, :location, :message, :location_id
  belongs_to :location
end

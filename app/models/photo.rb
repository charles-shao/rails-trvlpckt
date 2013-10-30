class Photo < ActiveRecord::Base
  attr_accessible :filepath, :location_id

  belongs_to :location
end

class Location < ActiveRecord::Base
  attr_accessible :img_url, :lat, :lng
  has_many :comments
end

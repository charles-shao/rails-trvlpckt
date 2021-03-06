class Location < ActiveRecord::Base
  attr_accessible :img_url, :lat, :lng
  has_many :comment, :dependent => :destroy
  has_many :photo, :dependent => :destroy

  accepts_nested_attributes_for :comment
end

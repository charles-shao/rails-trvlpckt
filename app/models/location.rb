class Location < ActiveRecord::Base
  attr_accessible :img_url, :lat, :lng
  has_many :comments, :dependent => :destroy
  has_many :photos, :dependent => :destroy

  accepts_nested_attributes_for :comment
end

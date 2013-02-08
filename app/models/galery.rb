#encoding: utf-8
class Galery < ActiveRecord::Base

  validates_presence_of :name
  
  has_many :galery_photos
  has_many :photos, :through => :galery_photos

  belongs_to :photo

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

end
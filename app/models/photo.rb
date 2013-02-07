#encoding: utf-8

require 'paperclip_processors/watermark'

class Photo < ActiveRecord::Base

  validates :name, :presence => true

  has_many :galery_photos
  has_many :galeries, :through => :galery_photos

  image_url = "/system/photo_images/:id/:style/:basename.:extension"
  image_path = ":rails_root/public/system/photo_images/:id/:style/:basename.:extension"

  has_attached_file :photo_image, :processors => [:watermark], :styles => { :medium => { :geometry => "640x480>", :watermark_path => "#{Rails.root}/public/images/watermark.png"} , :thumb => "150x120#" }, url: image_url, path: image_path

  cattr_reader :per_page
  @@per_page = 27

  def self.paginate_galery(galery, page)
    paginate :per_page => 27, :page => page, :order => 'created_at DESC'
  end

end
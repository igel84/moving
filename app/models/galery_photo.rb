#encoding: utf-8
class GaleryPhoto < ActiveRecord::Base

  belongs_to :photo
  belongs_to :galery

end
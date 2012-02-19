class Image < ActiveRecord::Base
  image_accessor :file

  belongs_to :ad
end

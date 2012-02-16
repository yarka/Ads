class Ad < ActiveRecord::Base
  attr_accessible :title, :description, :image_url, :price, :cover_image, :retained_cover_image
  image_accessor :cover_image 

  validates :title, :description, :presence => true
  validates :title, :length => { :minimum => 10 }
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01,
            :message => 'must be positive'}
end

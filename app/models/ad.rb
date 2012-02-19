class Ad < ActiveRecord::Base

  has_many :images

  accepts_nested_attributes_for :images, :allow_destroy => true
  
  validates :title, :description, :presence => true
  validates :title, :length => { :minimum => 10 }
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01,
            :message => 'must be positive'}
end

class Ad < ActiveRecord::Base

  has_many :images, :dependent => :destroy
  belongs_to :adtype
  belongs_to :user
  
  accepts_nested_attributes_for :images, :allow_destroy => true
  
  validates :title, :description, :adtype_id, :presence => true
  validates :title, :length => { :minimum => 10 }
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01,
            :message => 'must be positive'}
end

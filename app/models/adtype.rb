class Adtype < ActiveRecord::Base
  attr_accessible :name
  has_many :ads, :dependent => :destroy

  validates :name, :presence => true
  validates :name, :uniqueness => true
end

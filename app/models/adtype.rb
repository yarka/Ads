class Adtype < ActiveRecord::Base
  attr_accessible :name
  has_many :ads, :dependent => :destroy
end

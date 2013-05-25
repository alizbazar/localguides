class User < ActiveRecord::Base
  attr_accessible :name, :tel
  validates_uniqueness_of :name
  has_many :reviews
  has_many :tours
end

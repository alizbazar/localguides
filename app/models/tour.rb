class Tour < ActiveRecord::Base
  attr_accessible :end_time, :start_time, :guide, :tourist, :attractions
  has_one :guide, :class_name => "User"
  has_one :tourist, :class_name => "User"
  has_many :attractions

end

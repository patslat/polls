class Poll < ActiveRecord::Base
  attr_accessible :name, :creator_id
  belongs_to :creator, :class_name => "User"
  has_many :questions
  has_many :responders, :through => :questions
end

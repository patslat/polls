class User < ActiveRecord::Base
  attr_accessible :name
  has_many :polls # foreign_key => :creator_id
  has_many :responses, :foreign_key => "responder_id"
end

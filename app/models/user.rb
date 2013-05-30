class User < ActiveRecord::Base
  has_many :polls # foreign_key => :creator_id
  has_many :answers, :foreign_key => "responder_id"
end

class Response < ActiveRecord::Base
  attr_accessible :body, :responder_id, :answer_id
  belongs_to :responder, :class_name => "User"
  belongs_to :answer
  validates_with MyValidator


end

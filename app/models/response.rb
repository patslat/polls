class Response < ActiveRecord::Base
  attr_accessible :body, :responder_id, :question_id
  belongs_to :responder, :class_name => "User"
  belongs_to :question
end

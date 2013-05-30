class Answer < ActiveRecord::Base
  belongs_to :responder, :class_name => "User"
  belongs_to :question
  # attr_accessible :title, :body
end

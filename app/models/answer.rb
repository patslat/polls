class Answer < ActiveRecord::Base
  attr_accessible :body, :question_id
  belongs_to :question
  has_many :responses
  validates :question_id, :body, :presence => true
end

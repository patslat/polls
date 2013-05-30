class Question < ActiveRecord::Base
  attr_accessible :body, :poll_id
  belongs_to :poll
  has_many :answers
  has_many :responses, :through => :answers
  has_many :responders, :through => :responses
end

class Question < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :poll
  has_many :answers
  has_many :responders, :through => :answers
end

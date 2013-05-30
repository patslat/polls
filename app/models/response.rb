class Response < ActiveRecord::Base
  attr_accessible :body, :responder_id, :answer_id
  belongs_to :responder, :class_name => "User"
  belongs_to :answer
  validates_with MyValidator
  validates :responder_id, :answer_id, :presence => true

  def self.get_response(answers, user)
    user_input = gets.scan(/\d/).first.to_i
    user_answer = answers[user_input]
    raise "not an answer" if user_answer.nil?
    user_answer_id = user_answer.id
    Response.create(responder_id: user.id, answer_id: user_answer_id)
  end
end

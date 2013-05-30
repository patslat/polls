class Poll < ActiveRecord::Base
  attr_accessible :name, :creator_id
  belongs_to :creator, :class_name => "User"
  has_many :questions
  has_many :responses, :through => :questions
  has_many :responders, :through => :questions

  def return_results
    self.questions.each do |question|
      puts question.body
      question.answers.each do |answer|
        print "Answer: #{answer.body}, Count: #{answer.responses.count}\n"
      end
    end
  end
end

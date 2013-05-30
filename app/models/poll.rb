class Poll < ActiveRecord::Base
  attr_accessible :name, :creator_id
  belongs_to :creator, :class_name => "User"
  has_many :questions
  has_many :responses, :through => :questions
  has_many :responders, :through => :questions
  validates :name, :presence => true
  validates :creator_id, :presence => true
  validates :name, :uniqueness => true

  def return_results
    qs = self.questions.includes(:answers, :responses)
    qs.each do |question|
      puts question.body
      question.answers.each do |answer|
        resps = answer.responses
        print "Answer: #{answer.body}, Count: #{resps.length}\n"
      end
    end
  end

  def take_poll(user)
    qs = self.questions.includes(:answers)
    qs.each do |question|
      puts question.body
      as = question.answers
      as.each_with_index do |answer, index|
        puts "(#{index}) =>  #{answer.body}"
      end
      begin
      Response.get_response(as, user)
      rescue
        print "Please choose one of the response options: "
        retry
      end
    end
  end
end

class User < ActiveRecord::Base
  attr_accessible :name, :team_id
  belongs_to :team
  has_many :polls, :foreign_key => :creator_id
  has_many :responses, :foreign_key => :responder_id
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :team, :presence => true

  def take_poll(poll)
    raise "You can only take polls created by team members" if self.team != poll.creator.team
    poll.take_poll(self)
  end
end

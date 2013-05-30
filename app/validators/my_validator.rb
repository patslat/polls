class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.responder_id == record.answer.question.poll.creator_id
      record.errors[:responder_id] << "You made this poll!"
    end

    if record.answer.question.responders.include?(record.responder)
      record.errors[:responder_id] << "You've already answered this question!"
    end

  end
end
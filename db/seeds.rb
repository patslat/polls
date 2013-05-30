# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create(name: "team1")
Team.create(name: "Gryffindor")

User.create(name: 'user1', team_id: 1)
User.create(name: 'user2', team_id: 1)

User.create(name: "harry", team_id: 2)

Poll.create(name: 'poll1', creator_id: 1)

Question.create(body: 'question1', poll_id: 1)
Question.create(body: 'question2', poll_id: 1)

Answer.create(question_id: 1, body: 'question1_answer1')
Answer.create(question_id: 1, body: 'question1_answer2')
Answer.create(question_id: 2, body: 'question2_answer1')
Answer.create(question_id: 2, body: 'question2_answer2')

Response.create(answer_id: 1, responder_id: 2)
Response.create(answer_id: 4, responder_id: 2)
require 'faker'

Email.destroy_all

15.times do
  Email.create(object: Faker::Hipster.sentence(1), body: Faker::ChuckNorris.fact, read: false)
end

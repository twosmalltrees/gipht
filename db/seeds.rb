# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
bhuvana = User.create :email => 'bhuvana@example.com', :username => 'Bhuvana', :password => 'chicken', :password_confirmation => 'chicken'
bill = User.create :email => 'bill@example.com', :username => 'Bill', :password => 'chicken', :password_confirmation => 'chicken'
carmen = User.create :email => 'carmen@example.com', :username => 'Carmen', :password => 'chicken', :password_confirmation => 'chicken'
dale = User.create :email => 'dale@example.com', :username => 'Dale', :password => 'chicken', :password_confirmation => 'chicken'
danielM = User.create :email => 'danielm@example.com', :username => 'Daniel M', :password => 'chicken', :password_confirmation => 'chicken'
david = User.create :email => 'david@example.com', :username => 'David', :password => 'chicken', :password_confirmation => 'chicken'
harrison = User.create :email => 'harrison@example.com', :username => 'Harrison', :password => 'chicken', :password_confirmation => 'chicken'
jenn = User.create :email => 'jenn@example.com', :username => 'Jenn', :password => 'chicken', :password_confirmation => 'chicken'
prateek = User.create :email => 'prateek@example.com', :username => 'Prateek', :password => 'chicken', :password_confirmation => 'chicken'
prazwal = User.create :email => 'prazwal@example.com', :username => 'Prazwal', :password => 'chicken', :password_confirmation => 'chicken'
sam = User.create :email => 'sam@example.com', :username => 'Sam', :password => 'chicken', :password_confirmation => 'chicken'
samantha = User.create :email => 'samantha@example.com', :username => 'Samantha', :password => 'chicken', :password_confirmation => 'chicken'
thomas = User.create :email => 'thomas@example.com', :username => 'Thomas', :password => 'chicken', :password_confirmation => 'chicken'
alan = User.create :email => 'alan@example.com', :username => 'Alan', :password => 'chicken', :password_confirmation => 'chicken'
chris = User.create :email => 'chris@example.com', :username => 'Chris', :password => 'chicken', :password_confirmation => 'chicken'
danielB = User.create :email => 'danielb@example.com', :username => 'Daniel B', :password => 'chicken', :password_confirmation => 'chicken'
emily = User.create :email => 'emily@example.com', :username => 'Emily', :password => 'chicken', :password_confirmation => 'chicken'
ian = User.create :email => 'ian@example.com', :username => 'Ian', :password => 'chicken', :password_confirmation => 'chicken'
jae = User.create :email => 'jae@example.com', :username => 'Jae', :password => 'chicken', :password_confirmation => 'chicken'
josh = User.create :email => 'josh@example.com', :username => 'Josh', :password => 'chicken', :password_confirmation => 'chicken'
marc = User.create :email => 'marc@example.com', :username => 'Marc', :password => 'chicken', :password_confirmation => 'chicken'
rany = User.create :email => 'rany@example.com', :username => 'Rany', :password => 'chicken', :password_confirmation => 'chicken'
wolf = User.create :email => 'wolf@example.com', :username => 'Wolf', :password => 'chicken', :password_confirmation => 'chicken'
badger = User.create :email => 'badger@example.com', :username => 'Badger', :password => 'chicken', :password_confirmation => 'chicken'
joel = User.create :email => 'joel@example.com', :username => 'Joel', :password => 'chicken', :password_confirmation => 'chicken'


Contact.destroy_all
User.all.each do |user|
  User.all.each do |user_to_add|
    user.contacts.create(:owner_id => user.id, :user_id => user_to_add.id) unless user.id == user_to_add.id
  end
end

Conversation.destroy_all
procrastination = Conversation.create :name => 'Procrastination'
procrastination.users << User.all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
u1 = User.create :email => 'harrison@example.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :email => 'josh@example.com', :password => 'chicken', :password_confirmation => 'chicken'
u3 = User.create :email => 'brynley@example.com', :password => 'chicken', :password_confirmation => 'chicken'

Contact.destroy_all
Contact.create :user_id => u1.id, :contact_id => u2.id
Contact.create :user_id => u1.id, :contact_id => u3.id

Conversation.destroy_all
c1 = Conversation.create :name => 'South Street'
c2 = Conversation.create
c3 = Conversation.create

c1.users << u1 << u2 << u3
c2.users << u1 << u2
c3.users << u1 << u3

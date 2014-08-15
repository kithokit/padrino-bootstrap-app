require 'spec_helper'

describe Connection do
  before(:each) do
    user1 = User.new
    user1.first_name = "first_user"
    user1.save
    user2 = User.new
    user2.first_name = "second_user"
    user2.save
    con = Connection.new
    con.add_relationship(user1,user2)
    con.save
  end

  context 'user1 ' do
    it 'user1 should have 1 connection' do
      user1 = User.find_by(:first_name => "first_user")
      expect(user1.connections.count).to eq 1
    end
  end
  context 'user2 ' do
    it 'user2 should have 1 connection' do
      user2 = User.find_by(:first_name => "second_user")
      expect(user2.connections.count).to eq 1
    end
  end
  context 'connection ' do
    it 'should have 2 users' do
      expect(Connection.first.users.count).to eq 2
    end
  end
end

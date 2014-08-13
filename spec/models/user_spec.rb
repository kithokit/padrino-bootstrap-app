require 'spec_helper'

describe User do
  before(:each) do
    user = User.new
    user.first_name = "blahblah"
    user.save
  end

  context 'create user' do
    it 'should create user successfully' do
      findUser = User.find_by(:first_name => "blahblah")
      expect(findUser.first_name).to eq("blahblah")
    end
  end
end

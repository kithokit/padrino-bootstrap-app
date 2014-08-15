require 'spec_helper'

describe "Fun::App::UsersHelper" do
  let(:helpers){ Class.new }
  before { helpers.extend Fun::App::UsersHelper }
  subject { helpers }

  it "should return nil" do
    expect(subject.foo).to be_nil
  end
end

require 'spec_helper'

describe "Fun::App::ConnectionsHelper" do
  let(:helpers){ Class.new }
  before { helpers.extend Fun::App::ConnectionsHelper }
  subject { helpers }

  it "should return nil" do
    expect(subject.foo).to be_nil
  end
end

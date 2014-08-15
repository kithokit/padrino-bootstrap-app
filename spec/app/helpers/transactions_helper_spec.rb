require 'spec_helper'

describe "Fun::App::TransactionsHelper" do
  let(:helpers){ Class.new }
  before { helpers.extend Fun::App::TransactionsHelper }
  subject { helpers }

  it "should return nil" do
    expect(subject.foo).to be_nil
  end
end

require 'spec_helper'

describe Manuscript do
  it "can be instantiated" do
    Manuscript.new.should be_an_instance_of(Manuscript)
  end

  it "has a valid factory" do
    FactoryGirl.create(:manuscript).should be_valid
  end
  
  it "is invalid without a title" do
    FactoryGirl.build(:manuscript, title: nil).should_not be_valid
  end

  it "is invalid without an author" do
    FactoryGirl.build(:manuscript, author: nil).should_not be_valid
  end
end
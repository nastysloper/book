require 'spec_helper'

describe Manuscript do
  it "Can be instantiated" do
    Manuscript.new.should be_an_instance_of(Manuscript)
  end

  it "Has a valid factory" do
    FactoryGirl.create(:manuscript).should be_valid
  end
  
  it "Is invalid without a title" do
    FactoryGirl.build(:manuscript, title: nil).should_not be_valid
  end

  it "Is invalid without an author" do
    FactoryGirl.build(:manuscript, author: nil).should_not be_valid
  end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:author) }
end
require 'spec_helper'

describe Manuscript do
  it "can be instantiated" do
    Manuscript.new.should be_an_instance_of(Manuscript)
  end

  
end
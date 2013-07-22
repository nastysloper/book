require 'spec_helper'

describe Manuscript do
  it "can be instantiated" do
    Manuscript.new.should be_an_instance_of(Manuscript)
  end

  it "can be saved successfully" do
    Manuscript.create.should be_persisted

end
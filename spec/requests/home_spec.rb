require 'spec_helper'

describe 'Home' do
  context "on the home page" do

    it "can edit a post by clicking the edit link next to a post" do
      visit index
      click_link "Edit"
    end

  end
end
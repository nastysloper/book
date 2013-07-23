require 'spec_helper'

describe 'Home Page' do
  context 'On the home page' do

    it 'Welcomes the user' do
      visit '/'
      page.should have_content('How about that?')
    end

  end
end
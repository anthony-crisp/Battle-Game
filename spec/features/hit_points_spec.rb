require 'spec_helper'
require_relative '../../app'

describe Battle, :type => :feature do
  feature 'View a players HP' do
    scenario "player two's hit points" do
      visit('/')
      fill_in :player_one, with: 'Fred'
      fill_in :player_two, with: 'Barney'
      click_button('Submit')
      expect(page).to have_content 'Barney: 100HP'
    end
  end
end

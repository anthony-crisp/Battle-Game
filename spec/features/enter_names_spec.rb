require 'spec_helper'
require_relative '../../app'

describe Battle, :type => :feature do
  feature 'Begin game' do
    scenario 'by first submitting names' do
      visit('/')
      fill_in :player_one, with: 'Fred'
      fill_in :player_two, with: 'Barney'
      click_button('Submit')
      expect(page).to have_content 'Fred vs. Barney'
    end
  end
end

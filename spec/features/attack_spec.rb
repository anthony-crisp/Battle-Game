require 'spec_helper'
require_relative '../../app'

describe Battle, type: :feature do
  feature 'Attacking' do
    scenario 'attack Player 2' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Fred attacked Barney'
    end

    scenario 'Take damage' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content '90HP'
    end
  end
end

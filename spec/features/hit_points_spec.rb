require 'spec_helper'
require_relative '../../app'

describe Battle, type: :feature do
  feature 'View a players HP' do
    scenario "player two's hit points" do
      sign_in_and_play
      expect(page).to have_content 'Barney: 100HP'
    end
  end
end

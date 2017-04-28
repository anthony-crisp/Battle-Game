require 'spec_helper'
require_relative '../../app'

describe Battle, type: :feature do
  feature 'Begin game' do
    scenario 'by first submitting names' do
      sign_in_and_play
      expect(page).to have_content 'Fred: 100HP vs. Barney: 100HP'
    end
  end
end

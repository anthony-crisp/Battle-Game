def sign_in_and_play
  visit('/')
  fill_in :player_one, with: 'Fred'
  fill_in :player_two, with: 'Barney'
  click_button('Submit')
end

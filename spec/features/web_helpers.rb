def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Foo"
  fill_in :player_2_name, with: "Bar"
  click_button 'Submit'
end
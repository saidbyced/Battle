feature 'Viewing hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: "Foo"
    fill_in :player_2_name, with: "Bar"
    click_button 'Submit'
    expect(page).to have_content "Bar: 60 HPs"
  end
  scenario 'see Player 1 hit points' do
    visit('/')
    fill_in :player_1_name, with: "Foo"
    fill_in :player_2_name, with: "Bar"
    click_button 'Submit'
    expect(page).to have_content "Foo: 60 HPs"
  end
end

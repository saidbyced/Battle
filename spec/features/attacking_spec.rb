feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Foo attacked Bar!"
  end
  scenario 'lowers Player 2 hit points by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content "Bar: 60 HPs"
    expect(page).to have_content "Bar: 50 HPs"
  end
end
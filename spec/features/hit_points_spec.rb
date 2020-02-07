feature 'Viewing hit points' do
  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content "Foo: 60 HPs"
  end
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Bar: 60 HPs"
  end
end

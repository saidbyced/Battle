feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "Foo"
    fill_in :player_2_name, with: "Bar"
    click_button 'Submit'
    expect(page).to have_content "Foo vs. Bar"
  end
end

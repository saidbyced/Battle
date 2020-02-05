feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name_1, with: "Chris"
    fill_in :player_name_2, with: "Barri"
    click_button 'Submit'
    expect(page).to have_content "Chris vs. Barri"
  end
end


feature 'Switching turns' do
  context 'seeing current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Foo's turn"
    end
  end
  context 'seeing next player' do
    scenario 'after first player goes' do
      sign_in_and_play
      click_button "Attack"
      click_button "OK"
      expect(page).to_not have_content "Foo's turn"
      expect(page).to have_content "Bar's turn"
    end
  end
end


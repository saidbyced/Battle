feature 'Switching turns' do
  context 'seeing current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Foo's turn"
    end
  end
end


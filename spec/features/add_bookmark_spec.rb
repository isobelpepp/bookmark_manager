feature 'Adding bookmarks' do
  scenario 'User adds bookmarks' do
    visit('/bookmarks')
    click_button('Add bookmark')
    fill_in 'url', with: 'http://facebook.co.uk'
    click_button('Submit')
    expect(page).to have_content 'http://facebook.co.uk'
  end
end

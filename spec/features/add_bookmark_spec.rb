feature 'Adding bookmarks' do
  scenario 'User adds bookmarks' do
    visit('/bookmarks')
    click_button('Add bookmark')
    fill_in 'url', with: 'http://www.facebook.co.uk'
    fill_in 'title', with: 'Facebook'
    click_button('Submit')
    expect(page).to have_link('Facebook', href: 'http://www.facebook.co.uk')
  end
end

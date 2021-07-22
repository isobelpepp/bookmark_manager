feature 'Delete bookmark' do
  scenario 'deletes a bookmark' do
    visit('/bookmarks')
    click_button('Add bookmark')
    fill_in 'url', with: 'http://www.facebook.co.uk'
    fill_in 'title', with: 'Facebook'
    click_button('Submit')
    first('.bookmark').click_button 'Delete'
    expect(page).not_to have_link('Facebook', href: 'http://www.facebook.co.uk')
  end
end
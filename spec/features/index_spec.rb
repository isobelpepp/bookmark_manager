feature 'Home page' do
  scenario 'has a button to view bookmarks' do
    visit ('/')
    expect(page).to have_selector(:link_or_button, 'View Bookmarks')
  end
end
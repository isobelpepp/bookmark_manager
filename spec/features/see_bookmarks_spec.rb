feature 'View list of bookmarks' do
  scenario 'user sees a list of bookmarks' do
    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content 'http:/makersacademy.com'
  end
end
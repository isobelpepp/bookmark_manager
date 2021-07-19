feature 'View list of bookmarks' do
  scenario 'user sees a list of bookmarks' do
    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content'http://www.github.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
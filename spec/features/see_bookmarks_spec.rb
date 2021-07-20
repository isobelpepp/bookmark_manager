require 'pg'

feature 'View list of bookmarks' do
  scenario 'user sees a list of bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com')")
    
    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
require 'pg'

feature 'View list of bookmarks' do
  scenario 'user sees a list of bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com')")
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com')")
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com')")

    connection.exec("INSERT INTO bookmarks (title) VALUES ('Makers Academy')")
    connection.exec("INSERT INTO bookmarks (title) VALUES ('Destroy All Software')")
    connection.exec("INSERT INTO bookmarks (title) VALUES ('Google')")
    
    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content 'Makers Academy'
    expect(page).to have_content 'Destroy All Software'
    expect(page).to have_content 'Google'
  end
end
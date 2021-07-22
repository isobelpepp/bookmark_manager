require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.list' do
    it 'returns list of bookmarks' do

      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')

      bookmarks = Bookmark.list

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq('Makers Academy')
      expect(bookmarks.first.url).to eq('http://www.makersacademy.com')
    end
  end

  describe '.create' do
    it 'adds a bookmark to the list' do
      bookmark = Bookmark.create(url: 'http://www.facebook.co.uk', title: 'Facebook')
      persisted_data = persisted_data(id: bookmark.id)
      
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.url).to eq('http://www.facebook.co.uk')
      expect(bookmark.title).to eq('Facebook')
    end
  end

  describe '.delete' do
    it 'deletes a bookmark from the table' do
      bookmark = Bookmark.create(url: 'http://www.facebook.co.uk', title: 'Facebook')
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.list).not_to include 'Facebook'
    end
  end
end


# bookmark = Bookmark.create(url: 'http://www.example.org', title: 'Test Bookmark').first

# expect(bookmark['url']).to eq 'http://www.example.org'
# expect(bookmark['title']).to eq 'Test Bookmark'
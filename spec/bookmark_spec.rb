require 'bookmark'

describe Bookmark do
  describe '.list' do
    it 'returns list of bookmarks' do

      Bookmark.create(url: 'http://www.makersacademy.com')
      Bookmark.create(url: 'http://www.destroyallsoftware.com')
      Bookmark.create(url:'http://www.google.com')

      bookmarks = Bookmark.list
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '.create' do
    it 'adds a bookmark to the list' do
      Bookmark.create(url: 'http://www.facebook.co.uk')
      expect(Bookmark.list).to include('http://www.facebook.co.uk')
    end
  end
end

describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include 'https://www.bbc.co.uk/cbeebies'
      expect(bookmarks).to include 'https://www.youtube.com'
      expect(bookmarks).to include 'https://www.ebay.co.uk'
    end
  end
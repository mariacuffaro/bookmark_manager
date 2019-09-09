require './lib/bookmarks.rb'

describe Bookmarks do
  it 'returns a list of bookmarks' do
    bookmarks = Bookmarks.list
    expect(bookmarks).to include('http://www.makersacademy.com')
  end
end

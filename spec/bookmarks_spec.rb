require './lib/bookmarks.rb'

describe Bookmarks do
  it 'returns a list of bookmarks' do
    bookmarks = Bookmarks.list
    expect(bookmarks).to eq(['http://www.makersacademy.com',
                                'http://google.com'])
  end
end

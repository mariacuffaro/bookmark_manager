require './lib/bookmarks.rb'

describe Bookmarks do
  before (:each) do
    con = PG.connect :dbname => 'bookmark_manager_test', :user => 'student'
    rs = con.exec "TRUNCATE bookmarks"
  end
  it 'returns a list of bookmarks' do
    con = PG.connect :dbname => 'bookmark_manager_test', :user => 'student'
    rs = con.exec "INSERT INTO bookmarks (url) VALUES('http://www.google.com')"
    rs = con.exec "INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com')"
    rs = con.exec "INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com')"
    bookmarks = Bookmarks.list
    expect(bookmarks).to include('http://www.makersacademy.com')
  end
end

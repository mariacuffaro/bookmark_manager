  require 'pg'

  class Bookmarks

    def self.list
      if ENV['ENVIRONMENT'] == 'test' then
       con = PG.connect :dbname => 'bookmark_manager_test', :user => 'student'
     else
       con = PG.connect :dbname => 'bookmark', :user => 'student'
     end
      con = PG.connect(dbname: 'bookmark_manager')
      result = con.exec("SELECT * FROM bookmarks;")
      result.map { |bookmark| bookmark['url'] }
    end

  end

require 'data_mapper'
require 'dm-postgres-adapter'

class Link

	include DataMapper::Resource

property :id, Serial
property :url, String
property :title, String

end

# move to dotenv for refactoring this
DataMapper.setup(:default,'postgres://jaycee@localhost/bookmark_manager_test')
DataMapper.finalize
DataMapper.auto_upgrade!

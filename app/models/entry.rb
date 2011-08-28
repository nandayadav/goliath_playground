require 'active_record' #mysql2 0.3.7 requires ActiveRecord 3.1
class Entry < ActiveRecord::Base
  db_config = {:adapter => 'mysql2', :database => '', :host => '', :username => '', :password => ''}
  establish_connection(db_config)
end
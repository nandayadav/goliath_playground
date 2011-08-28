require 'em-synchrony/activerecord' #Using fiberized mysql2
class Entry < ActiveRecord::Base
  db_config = {:adapter => 'em_mysql2', :database => '', :host => '', :username => '', :password => ''}
  establish_connection(db_config)
end
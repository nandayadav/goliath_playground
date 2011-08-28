require 'em-synchrony/activerecord' #Using fiberized mysql2
class Article < Entry
  db_config = {:adapter => 'em_mysql2', :database => '', :host => '', :username => '', :password => ''}
  establish_connection(db_config)
  self.inheritance_column = :_type_disabled_so_dont_do_anything
end
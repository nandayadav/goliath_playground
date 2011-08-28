require 'active_record' #mysql2 0.3.7 requires ActiveRecord 3.1
class Article < Entry
  db_config = {:adapter => 'mysql2', :database => '', :host => '', :username => '', :password => ''}
  establish_connection(db_config)
  self.inheritance_column = :_type_disabled_so_dont_do_anything
end
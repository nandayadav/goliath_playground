require 'em-synchrony/activerecord' #Using fiberized mysql2
require 'yaml'
class Article < Entry
  db_config = YAML::load(File.read('./config/database.yml'))["development"]
  establish_connection(db_config)
  self.inheritance_column = :_type_disabled_so_dont_do_anything
end
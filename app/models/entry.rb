require 'em-synchrony/activerecord' #Using fiberized mysql2
require 'yaml'
class Entry < ActiveRecord::Base
  db_config = YAML::load(File.read('./config/database.yml'))["development"]
  establish_connection(db_config)
end
require 'em-synchrony/activerecord' #Using fiberized mysql2
require 'yaml'
class User < ActiveRecord::Base
  db_config = YAML::load(File.read('./config/database.yml'))["development"]
  puts db_config
  establish_connection(db_config)
end
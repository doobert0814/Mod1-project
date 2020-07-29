require 'bundler'
Bundler.require

#require 'active_record'

require_relative '../app/profile.rb'
require_relative '../lib/command_line_interface.rb'
require_relative '../app/site.rb'
require_relative '../app/user.rb'


# require 'sqlite3'
# require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'db/development.db')


require 'bundler'
Bundler.require

require 'active_record'

require_all  './app'

require 'sqlite3'
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'development.db')


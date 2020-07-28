require 'bundler'
Bundler.require

require_all './app'

DB = {
    :connection => SQLite3::Database.new("db/profiles.sqlite")
}

binding.pry
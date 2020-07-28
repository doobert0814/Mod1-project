require_relative './config/enviroment'
require "sinatra/activerecord/rake"

def reload!
    load_all './app'
end

task :console do
    Pry.start
end


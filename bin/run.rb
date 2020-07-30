#!/usr/bin/env ruby
#!/usr/bin/env ruby

require_relative "../config/environment.rb"

cli= CommandLineInterface.new



cli.run

cli.create_profile
system("clear")
cli.main_menu
# cli.search_all


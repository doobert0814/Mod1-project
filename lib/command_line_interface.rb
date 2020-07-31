class CommandLineInterface

    @@prompt = TTY::Prompt.new
    ######################### Logo #############################
    def self.logo_art
        puts "                __           __
        ,888888       888888.
      ,8888  8888   8888  8888,_
     ,8888888888888888888888888888,.
  _,88888888888888888888888888888888888
_,888888888 @ @@   8   @@ @@@@@ 888888'
888888888 @@@@@@@@@@@@@@@@@@@@@ 88888'
`88888 @@  @@@@@@@@@@@@@@@@@ 88888'
 `88 @@@  @@@  @@@@@@@@@@@@@ 8888'
    @@@  @@@  @@@@@@@  @@@@ 8888'
   @@@   @@@ @@@@@@   @@@ 88888'
  @@@   @@@ @@@@@@   @@@ 88888'
  @@@   @@@ @@@@@@   @@@ 8888'
  @@@  @@@@@@@@@@   @@@ 88888
   @@@@@@@@@@@@@@   @@@ 888'      
    @@@@@@@@@@@@@@ @@@' '
     @@@@@@@@@@@@@@@@'
      `@@@@@@@@@@@@@'
          `@@@@@@' \n ".colorize(:red)
    end

   

    ############################## Sign Up Method ################################
    def self.sign_up 
        system "clear"
        
        self.logo_art

        @name = @@prompt.ask("What is your First Name?")
        @password = @@prompt.mask("Please enter a password")
        @ans1 = choices = @@prompt.select("Would you like to create your profile now?") do |menu|
            menu.choice 'Create'
            menu.choice 'Exit'
        end
        user = User.create(name: @name, password: @password)
        sleep 3/2
        system("clear")
        if @ans1 == "Create"
            CommandLineInterface.create_profile
        else
            CommandLineInterface.exit
        end
    end
 ############################## Create Method ################################
    def self.create_profile

        self.logo_art
        
        @user_name = @@prompt.ask("Please Create a User name", required: true)
        @age = @@prompt.ask("Please enter your age:")
        @identify = @@prompt.ask("How do you identify?")
        @neighborhood = @@prompt.ask("What neighborhood do you live in?")
        @instrument = @@prompt.ask("What instrument do you play?", required: true)
        @about = @@prompt.ask("Tell us about yourself!")

        profile = Profile.create(user_name: @user_name, age: @age, 
            identify: @identify, neighborhood: @neighborhood, 
            instrument: @instrument, about: @about)

            system("clear")
            sleep(0.5)

        puts ("Thank you for signing up! You are being directed to the main menu.")

        bar = TTY::ProgressBar.new("please wait... [:bar]", total: 30)
        30.times do
            sleep(0.1)
            bar.advance(1)
        end


        CommandLineInterface.main_menu
    end
################################ Delete method #################################
    def self.delete_profile 

        self.logo_art
        
        @ans = @@prompt.ask("Please confirm your first name: ")
        system("clear")
        @pass = @@prompt.ask("Please confirm your password: ")
        user = User.where(name: @ans, password: @pass).ids
            User.destroy(user)
            puts "Goodbye!"
            CommandLineInterface.exit
    end

################################ Exit method #################################
    def self.exit
        puts "\n🎹  Come back soon 🎶\n"
        sleep 3/2
        system ('exit!')
    end
################################ landing #################################
    def self.landing_page
        system 'clear'
        self.logo_art
        puts "Welcome to CLEF"
        nav = @@prompt.select("\nWhat would you like to do?", %w(SignUp Exit))
        if nav == "SignUp"
            sign_up
        elsif nav == "Exit"
            CommandLineInterface.exit
        end
    end
################################ update ######################################
    def self.update

        self.logo_art

        choices = @@prompt.select("What would you like to Update?") do |menu|
            menu.choice 'Identify'
            menu.choice 'Instrument'
            menu.choice 'About'
        end

        if choices == 'identify'
            ide = @@prompt.ask("What is your preferred identity?")
            user = Profile.find_by(identity: @identity)
            user.identity = ide
            user.save
            CommandLineInterface.main_menu
        elsif choices == 'Instrument'
            inst = @@prompt.ask("What is your new instrument?")
            user = Profile.find_by(instrument: @instrument)
            user.instrument = inst
            user.save
            CommandLineInterface.main_menu
        elsif choices == 'about'
            abt = @@prompt.ask("What would you like to say?")
            user = Profile.find_by(about: @about)
            user.about = abt
            user.save
            CommandLineInterface.main_menu
        else
            puts "Goodbye"
        end
    end
################################ search menu ######################################
    def self.search_menu
        choices = @@prompt.select("What filter would you like to search by?") do |menu|
            menu.choice "Neighborhood"
            menu.choice "Age"
            menu.choice "About"
            menu.choice "SearchMenu"
            menu.choice "MainMenu"
        end

        if choices == "Neighborhood"
            bar = TTY::ProgressBar.new("downloading [:bar]", total: 30)
            30.times do
                sleep(0.1)
                bar.advance(1)
            end
            user = Profile.all.map { |neighborhood| neighborhood.neighborhood}
            puts user.inspect.colorize(:blue)
            CommandLineInterface.search_menu
                #binding.pry
        elsif choices == "Age"
            bar = TTY::ProgressBar.new("downloading [:bar]", total: 30)
            30.times do
                sleep(0.1)
                bar.advance(1)
            end
            user = Profile.all.map { |age| age.age}
            puts user.inspect.colorize(:red)
            CommandLineInterface.search_menu
        elsif choices == "About"
            user = Profile.all.map { |about| about.about}
            puts user.inspect.colorize(:green)

        elsif choices == "SearchMenu"
            search_menu

        elsif choices == "MainMenu"
            CommandLineInterface.main_menu
        end

    end
############################ Main_Menu #############################
    def self.main_menu
        system"clear"
        self.logo_art

        choices = @@prompt.select("What would you like to do?") do |menu|
            menu.choice 'Search Profiles'
            menu.choice 'Update Profile'
            menu.choice 'Delete Profile'
        end

        if choices == 'Search Profiles'
            CommandLineInterface.search_menu
        elsif choices == 'Update Profile'
            update
        elsif choices == 'Delete Profile'
            delete_profile
        else
            puts "Goodbye"
        end
    end

    # def self.put_profiles
    #     #user = User.where(user_name:).to_a
    #     puts " Username: #{Profile.find_{ |user_name| user_name.user_name}} "
    #     binding.pry
    #     puts "age:"
    #     puts "Identify"
    #     puts "neighborhood:"
    #     puts "Instrument: "
    #     puts "about"
    # end

    

    # def profiles 
    #     Profiles.all.select {|user_name| user_name == self}
    # end

end






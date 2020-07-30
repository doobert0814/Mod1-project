class CommandLineInterface
    

    def run 
        prompt = TTY::Prompt.new
        system("clear")

        welcome = prompt.select("Welcome to Clef") do |menu|
            menu.choice 'SignUp'
            menu.choice "login"
            menu.choice 'Exit'
        end

        if welcome == 'login'
            login_menu
        elsif welcome == 'SignUp'
            sign_up
        else
            puts "Goodbye"
        end
    end

    def home
        home_page
    end

    def create_profile
        prompt = TTY::Prompt.new
        @user_name = prompt.ask("Please Create a User name", required: true)
        @age = prompt.ask("Please enter your age:")
        @identify = prompt.ask("How do you identify?")
        @neighborhood = prompt.ask("What neighborhood do you live in?")
        @instrument = prompt.ask("What instrument do you play?", required: true)
        @about = prompt.ask("Tell us about yourself!")
    end

    def sign_up 
        prompt = TTY::Prompt.new
        @name = prompt.ask("What is your First Name?")
        @password = prompt.mask("Please enter a password")
        user= User.create(name: @name, password: @password)
        ans1 = prompt.yes?("Would you like to create your profile now? ") do |q|
                q.suffix "Yes/No"
        end
    end

    def search
        prompt= TTY::Prompt.new
        prompt = prompt.select("Would you like to view everyone in your area?", %w(Yes No))
        if @ans2 == "Yes"
            puts Profile.all 
        end

    end
        

    # def create_profile
    #     prompt = TTY::Prompt.new
    #     @user_name = prompt.ask("Please Create a User name", required: true)
    #     @age = prompt.ask("Please enter your age:")
    #     @identify = prompt.ask("How do you identify?")
    #     @neighborhood = prompt.ask("What neighborhood do you live in?")
    #     @instrument = prompt.ask("What instrument do you play?", required: true)
    #     @about = prompt.ask("Tell us about yourself!")
    # end

    def view_all
        prompt= prompt.yes?
    end

    def login_menu
        prompt = TTY::Prompt.new
        exist_user_name = prompt.ask("What is your Username", required: true)
        exist_password = prompt.mask("Please enter your password")
    end

    def home_page
        prompt = TTY::Prompt.new
        puts "Welcome to Your Home Page"
        system("clear")
        puts "There are blank people near you."
        answer = prompt.yes?("Would you like to narrow your search?") do |q|
            if answer == "Y"
                
            end
        end
    end

    def exit
        puts "Goodbye"
    end
end

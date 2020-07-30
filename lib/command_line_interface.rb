class CommandLineInterface
    

    def run 
        prompt = TTY::Prompt.new
        system("clear")

        welcome = prompt.select("Welcome to Clef") do |menu|
            menu.choice 'SignUp'
            #menu.choice "login"
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

    def sign_up 
        prompt = TTY::Prompt.new
        @name = prompt.ask("What is your First Name?")
        @password = prompt.mask("Please enter a password")
        ans1 = prompt.yes?("Would you like to create your profile now? ")

        user= User.create(name: @name, password: @password)
    end

    def create_profile
        prompt = TTY::Prompt.new
        @user_name = prompt.ask("Please Create a User name", required: true)
        @age = prompt.ask("Please enter your age:")
        @identify = prompt.ask("How do you identify?")
        @neighborhood = prompt.ask("What neighborhood do you live in?")
        @instrument = prompt.ask("What instrument do you play?", required: true)
        @about = prompt.ask("Tell us about yourself!")

        profile = Profile.create(user_name: @user_name, age: @age, 
            identify: @identify, neighborhood: @neighborhood, 
            instrument: @instrument, about: @about)
    end


    def main_menu
        prompt = TTY::Prompt.new
        choices = [
            {name: "Search Profiles", value: 1},
            {name: "Delete Profile", value: 2}]
        user_input= prompt.multi_select("Welcome to CLEF!! \n Please make a selection!", choices)
        case user_input
        when 1
            puts search_all
        when 2
           puts delete_profile
        end
    end

    def login_menu
        prompt = TTY::Prompt.new
        exist_user_name = prompt.ask("What is your Username", required: true)
        exist_password = prompt.mask("Please enter your password")
    end

    def search_all
        users = Profile.all
        puts users
        
    end

    def delete_profile 
        prompt = TTY::Prompt.new
        @ans = prompt.ask("Please confirm your first name: ")
            User.destroy_by(name: @ans)
            system("clear")
    end

    def exit
        puts "Goodbye"
    end
end

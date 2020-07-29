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

    def sign_up 
        prompt = TTY::Prompt.new
        user_name = prompt.ask("Please Create a User name", required: true)
        password = prompt.mask("What is your password?")
        
        i = 0
        while i <= 5
            if password.length < 8 
                puts "A minimum of 8 characters are needed. Please 
                    Try again"
            else 
                home_page
            end
            i+=1
        end
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
                exit
            end
        end
    end

    def exit
        puts "Goodbye"
    end
end

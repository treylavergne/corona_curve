class CLI
    
    def start
        self.welcome
        self.intro
        self.get_launch_dates
        self.display_launch_dates
    end
    
    def welcome
        puts "Welcome to the Corona Curve!"
        #puts "Insert spaceship text"
        sleep(2)
    end

    def intro
        puts "Does COVID-19 have you worried?"
        puts "Are you sick of being in fear?"
        puts ""
        puts "Great news! Forget about flattening the curve - we'll avoid the curve entirely!"

        puts "Let's get you on your way!"
    end

    def get_launch_dates
        API.get_launch_dates
        
        puts "First things first, when are you wanting to leave? Choose from one of the upcoming dates below:"
    end

    def display_launch_dates
        API.all_launch_dates.each.with_index(1) do |date, index|
        puts "#{index}. #{date}"

        end
    end

    #def get_launch_location
    #puts "First things first, choose the country you'd like to launch from below:"
    #end

     #def choose_rocket
    #puts "First things first, choose the location nearest to you below:"
    #end



end
class CLI
    
    def start
        self.welcome
        self.intro
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

    def display_launches
        API.get_upcoming_launches
        #puts "First things first, choose the country you'd like to launch from below:"
    end

    #def get_launch_location
    #puts "First things first, choose the country you'd like to launch from below:"
    #end

     #def choose_rocket
    #puts "First things first, choose the location nearest to you below:"
    #end



end
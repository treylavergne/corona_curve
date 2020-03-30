class CLI
    
    def start
        self.welcome
        self.intro
        self.get_launch_dates
        self.display_launch_dates
        #self.user_date_input
        self.get_ship_name
    end
    
    def welcome
        puts ""
        puts "Welcome to the Corona Curve!"
        puts ""
        #puts "Insert spaceship text"
        sleep(2)
    end

    def intro
        puts "Does COVID-19 have you worried?"
        puts ""
        puts "Are you sick of being in fear?"
        puts ""
        puts "Well then we have GREAT NEWS! Here at the Corona Curve, we're offering expedited tickets to outer space all for the low price of 1 toilet paper roll. Forget about flattening the curve - we'll avoid the curve entirely!"

        puts "Let's get you on your way!"
        sleep(2)
    end

    def get_launch_dates
        #API.get_launch_dates - pull these from Launch @@all instead of API
        
        puts ""
        puts ""
        puts "First things first, when are you wanting to leave?" 
        puts "Choose from one of the upcoming dates below:"
        puts ""
    end

    def display_launch_dates
        API.all_launches.each.with_index(1) do |date, index|
        puts "#{index}. #{date}"
        puts ""
        end
        input = gets.chomp
    end

    def user_date_input
        date_input = gets.chomp

    end

    #def get_ship_name
     #   API.get_ship_name
    #end

    #def get_launch_location
    #puts "First things first, choose the country you'd like to launch from below:"
    #end

     #def choose_rocket
    #puts "First things first, choose the location nearest to you below:"
    #end



end
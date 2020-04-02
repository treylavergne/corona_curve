class CLI
    
    def start
        self.intro
        self.get_api_data
        self.display_launch_dates
        self.get_user_input
       
       
    end
    

    def intro

        puts "3"
        sleep(0.75)
        puts "2"
        sleep(0.75)
        puts "1"
        sleep(0.75)

        puts "
                                                  
                            █░█░█ █▀▀ █░░ █▀▀ █▀█ █▀▄▀█ █▀▀   ▀█▀ █▀█   ▀█▀ █░█ █▀▀
                            ▀▄▀▄▀ ██▄ █▄▄ █▄▄ █▄█ █░▀░█ ██▄   ░█░ █▄█   ░█░ █▀█ ██▄

        ░█████╗░░█████╗░██████╗░░█████╗░███╗░░██╗░█████╗░  ░█████╗░██╗░░░██╗██████╗░██╗░░░██╗███████╗
        ██╔══██╗██╔══██╗██╔══██╗██╔══██╗████╗░██║██╔══██╗  ██╔══██╗██║░░░██║██╔══██╗██║░░░██║██╔════╝
        ██║░░╚═╝██║░░██║██████╔╝██║░░██║██╔██╗██║███████║  ██║░░╚═╝██║░░░██║██████╔╝╚██╗░██╔╝█████╗░░
        ██║░░██╗██║░░██║██╔══██╗██║░░██║██║╚████║██╔══██║  ██║░░██╗██║░░░██║██╔══██╗░╚████╔╝░██╔══╝░░
        ╚█████╔╝╚█████╔╝██║░░██║╚█████╔╝██║░╚███║██║░░██║  ╚█████╔╝╚██████╔╝██║░░██║░░╚██╔╝░░███████╗
        ░╚════╝░░╚════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚══╝╚═╝░░╚═╝  ░╚════╝░░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝"
        
        puts ""
        #puts "Insert spaceship text"
        sleep(0)
        puts "Does COVID-19 have you worried?"
        puts ""
        puts "Are you sick of being in fear?"
        puts ""
        puts "Well then we have GREAT NEWS! Here at the Corona Curve, we're offering expedited tickets to outer space all for the low price of 1 toilet paper roll. Forget about flattening the curve - we'll avoid the curve entirely!"

        puts "Let's get you on your way!"
        sleep(0)
        puts ""
        puts ""
        puts "First things first, when are you wanting to leave?" 
        puts "Choose from one of the upcoming dates below or exit :"
        puts ""

    end

    def get_api_data
        API.get_launch_data
        API.all_api_data
    end

    def display_launch_dates
        #API.get_launch_dates - pull these from Launch @@all instead of API
        
        Launch.launch_dates

    end

    def get_user_input
        #and handle
        input = nil
            while input != 'exit'
                input = gets.strip
                
                if input == "exit"
                    goodbye
                    break
                # elsif 
               elsif true # to validate user input
                @launch_object = Launch.all[input.to_i - 1]
                display_launch_object
                puts "Would you like to see other launches or would you like to exit? Select another number or exit."
                get_user_input


            
                else
                    invalid_input
                end
           
        end
        

    end

    def display_launch_object
        puts "#{@launch_object.name}"
        puts "#{@launch_object.api_id}"
        puts "#{@launch_object.date}"
    end

    def invalid_input
        puts "Did you mean to type that? Feel free to enter one of the selections or exit if you're through."
        puts ""
        display_launch_dates
    end



    def goodbye
        puts "Thanks for visiting! #swervethcurve"
        exit
    end



    

    # def display_launch_dates
    #     # API.get_launch_data.each.with_index(1) do |date, index|
    #     # puts "#{index}. #{date}"
    #     # puts ""
    #     end
    #     input = gets.chomp
    # end

    # def user_date_input
    #     date_input = gets.chomp

    # end

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
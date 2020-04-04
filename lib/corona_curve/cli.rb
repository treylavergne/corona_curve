class CLI
    
    def start
        # self.intro
        self.get_api_data
        self.display_launch_dates
        self.get_user_input
       
       
    end
    

    def intro

        puts ""
                                                    puts "
                                                    █▀▀█ 
                                                    ──▀▄ 
                                                    █▄▄█"
        puts ""
        sleep(0.75)
        puts ""
                                                    puts "
                                                    █▀█ 
                                                    ─▄▀ 
                                                    █▄▄"
        puts ""
        sleep(0.75)
        puts ""
                                                    puts "
                                                    ▄█─ 
                                                    ─█─ 
                                                    ▄█▄"

        puts ""
        sleep(0.75)
        puts ""
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
        puts ""
        sleep(1.75)
        puts "Does COVID-19 have you worried?"
        puts ""
        sleep(1.75)
        puts "Are you sick of being in fear?"
        puts ""
        sleep(2)
        puts "Well then we have GREAT NEWS! Here at the Corona Curve,"
        puts "we want to help you out by giving you the most up-to-date info on "
        puts "upcoming trips to outer space."
        sleep(4)
        puts "Forget about flattening the curve - we'll avoid the curve entirely!"
        sleep(3)
        puts "Let's get you on your way!"
        sleep(4)
        puts ""
        puts ""
        puts "First things first, when are you wanting to leave?" 
        puts "Choose from one of the upcoming dates by typing it's number below or type exit to leave the program:"
        puts ""
        sleep(4)

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
        
        input = nil
            while input = gets.strip
                if input.to_i.between?(1, 5) # to validate user input
                @launch_object = Launch.all[input.to_i - 1]
                display_launch_object
                puts ""
                puts "Would you like to see other launches or would you like to exit? Select another number or type exit to leave."
                get_user_input

                elsif input == 'exit'
                    goodbye
                    break
                else
                    invalid_input
                end
            end
           
                
            
        
    end

    def display_launch_object
        puts ""
        puts "This launch leaves #{@launch_object.date} "
        puts "and the rocket's name is the #{@launch_object.name}."
        puts "This id number for this launch is #{@launch_object.api_id} in case you need to reference it to your ticket holder."
        sleep(1)
    end

    def invalid_input
        puts ""
        puts "Did you mean to type that? Feel free to type in one of the selections provided or type exit if you're done."
        puts ""
        display_launch_dates
    end

    def goodbye
        puts ""
        puts "Thanks for visiting and stay safe! #swervethcurve"
        puts ""
        exit
    end


    

    # def display_launch_dates
    #     # API.get_launch_data.each.with_index(1) do |date, index|
    #     # puts "#{index}. #{date}"
    #     # puts ""
    #     end
    #     input = gets.chomp
    # end

 





end
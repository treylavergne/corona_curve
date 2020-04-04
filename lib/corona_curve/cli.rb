class CLI
    
    def start
        self.intro
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
        ░╚════╝░░╚════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚══╝╚═╝░░╚═╝  ░╚════╝░░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝".green
        
        sleep(2)
        puts ""
        puts ""
        sleep(1.75)
        puts "Does COVID-19 have you worried?"
        puts ""
        sleep(1.75)
        puts "Are you sick of being in fear?"
        puts ""
        sleep(2)
        puts "Well then we have GREAT NEWS! Here at the \e[4mCorona Curve\e[0m,"
        puts "we want to help you out by giving you the most up-to-date info on "
        puts "upcoming trips to outer space so that you can plan accordingly."
        sleep(6.50)
        puts "Forget about \e[3mflattening the curve\e[0m, with us - \e[1myou can avoid the curve entirely!\e[0m"
        sleep(5)
        puts "Let's get you on your way!"
        sleep(4)
        puts ""
        puts ""
        puts "First things first, when are you wanting to leave?"
        sleep(3)
        puts "Choose from one of the upcoming dates by \e[1mentering it's number below\e[0m or typing \e[1mexit\e[0m to leave the program:"
        puts ""
        sleep(5)

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
                puts "Would you like to see other launches or would you like to exit? \e[1mSelect another number\e[0m or type \e[1mexit\e[0m to leave."
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
        puts "This id number for this launch is #{@launch_object.api_id} in case you need to reference it to your \e[1mticket holder\e[0m."
        sleep(1)
    end

    def invalid_input
        puts ""
        puts "\e[1mDid you mean to type that?\e[0m Feel free to \e[1mtype in one of the selections provided\e[0m or type \e[1mexit\e[0m if you're done."
        puts ""
        display_launch_dates
    end

    def goodbye
        puts ""
        puts ""
        puts "Thanks for visiting and stay safe! \e[1m#swervethcurve\e[0m"
        puts ""
        puts ""
        exit
    end

end
class API
    def self.get_launch_data
        response = HTTParty.get('https://launchlibrary.net/1.3/launch?next=5
        ')
        response['launches'].each {|list| Launch.new(list)}
        #binding.pry
        
        #@@all_launches = response['launches'].each {|list| list['net']}
    end

    # def get_launch_dates
    #     @@all_launches = response['launches'].map {|list| list['net']}

    # end

    # def self.all_launches
    #     @@all_launches
    # end

    # #def self.get_ship_name
    #     response = HTTParty.get('https://launchlibrary.net/1.3/launch?next=5
    #     ')
    #     @@all_ships = response['launches'].map {|list| list['name']}
    #     puts @@all_ships
    # end

end
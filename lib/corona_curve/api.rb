class API
    @@all_launch_dates = []
    def self.get_launch_dates
        response = HTTParty.get('https://launchlibrary.net/1.3/launch?next=5
        ')

        #binding.pry
        
        @@all_launch_dates = response['launches'].map {|hash| hash['net']}
    end

    def self.all_launch_dates
        @@all_launch_dates
    end

end
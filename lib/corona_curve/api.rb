class API
    
    def self.get_launch_data
        response = HTTParty.get('https://launchlibrary.net/1.3/launch?next=5
        ')
        @@all_api_data = response['launches'].each {|data_point| Launch.new(data_point)}
    end

    def self.all_api_data
        @@all_api_data
    end

end
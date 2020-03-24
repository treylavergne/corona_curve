class API
    def self.get_upcoming_launches
        response = HTTParty.get('https://launchlibrary.net/1.3/launch?next=5
        ')
    end

end
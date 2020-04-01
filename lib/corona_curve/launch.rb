class Launch
    attr_accessor :api_id, :name, :date
    @@all = []

    def initialize(attributes)
        @api_id = attributes['id']
        @name = attributes['name']
        @date = attributes['net']
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.launch_dates
        @@all.each.with_index(1) do |object, index|
            puts "#{index}. #{object.date}"
            puts ""
        end
    end

end

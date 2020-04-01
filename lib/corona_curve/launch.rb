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
        # binding.pry
    end

    # def self.find_by_choice(input)
    #     all.find{|input| all[input.to_i]}
    # end


end

class Launch
    attr_accessor :api_id, :name, :date
    @@all = []

    def initialize(attributes)
        binding.pry
        @api_id = attributes['id']
        @name = attributes['name']
        @date = attributes['net']
        @@all << self
    end

    def self.all
        @@all
    end


end

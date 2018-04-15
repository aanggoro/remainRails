require_relative 'jeep'

module Car
    def self.info
      'car ' + Jeep.info
    end
end

puts Car.info

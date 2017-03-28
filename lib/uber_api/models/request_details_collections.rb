# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module UberApi
  class RequestDetailsCollections < BaseModel
    # The object that contains driver details.
    # @return [Driver]
    attr_accessor :driver

    # The estimated time of vehicle arrival in minutes.
    # @return [Integer]
    attr_accessor :eta

    # The object that contains the location information of the vehicle and driver.
    # @return [Location]
    attr_accessor :location

    # The unique ID of the Request.
    # @return [String]
    attr_accessor :request_id

    # The status of the Request indicating state.
    # @return [String]
    attr_accessor :status

    # The surge pricing multiplier used to calculate the increased price of a Request. A multiplier of 1.0 means surge pricing is not in effect.
    # @return [Float]
    attr_accessor :surge_multiplier

    # The object that contains vehicle details.
    # @return [Vehicle]
    attr_accessor :vehicle

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["driver"] = "driver"
        @hash["eta"] = "eta"
        @hash["location"] = "location"
        @hash["request_id"] = "request_id"
        @hash["status"] = "status"
        @hash["surge_multiplier"] = "surge_multiplier"
        @hash["vehicle"] = "vehicle"
      end
      @hash
    end

    def initialize(driver = nil,
                   eta = nil,
                   location = nil,
                   request_id = nil,
                   status = nil,
                   surge_multiplier = nil,
                   vehicle = nil)
      @driver = driver
      @eta = eta
      @location = location
      @request_id = request_id
      @status = status
      @surge_multiplier = surge_multiplier
      @vehicle = vehicle
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        driver = Driver.from_hash(hash["driver"]) if hash["driver"]
        eta = hash["eta"]
        location = Location.from_hash(hash["location"]) if hash["location"]
        request_id = hash["request_id"]
        status = hash["status"]
        surge_multiplier = hash["surge_multiplier"]
        vehicle = Vehicle.from_hash(hash["vehicle"]) if hash["vehicle"]

        # Create object from extracted values
        RequestDetailsCollections.new(driver,
                                      eta,
                                      location,
                                      request_id,
                                      status,
                                      surge_multiplier,
                                      vehicle)
      end
    end
  end
end
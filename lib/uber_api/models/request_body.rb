# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module UberApi
  class RequestBody < BaseModel
    # The final or destination latitude.
    # @return [Float]
    attr_accessor :end_latitude

    # The final or destination longitude.
    # @return [Float]
    attr_accessor :end_longitude

    # The unique ID of the product being requested.
    # @return [String]
    attr_accessor :product_id

    # The beginning or "pickup" latitude.
    # @return [Float]
    attr_accessor :start_latitude

    # The beginning or "pickup" longitude.
    # @return [Float]
    attr_accessor :start_longitude

    # The unique identifier of the surge session for a user. Required when returned from a 409 Conflict response on previous POST attempt.
    # @return [String]
    attr_accessor :surge_confirmation_id

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["end_latitude"] = "end_latitude"
        @_hash["end_longitude"] = "end_longitude"
        @_hash["product_id"] = "product_id"
        @_hash["start_latitude"] = "start_latitude"
        @_hash["start_longitude"] = "start_longitude"
        @_hash["surge_confirmation_id"] = "surge_confirmation_id"
      end
      @_hash
    end

    def initialize(end_latitude = nil,
                   end_longitude = nil,
                   product_id = nil,
                   start_latitude = nil,
                   start_longitude = nil,
                   surge_confirmation_id = nil)
      @end_latitude = end_latitude
      @end_longitude = end_longitude
      @product_id = product_id
      @start_latitude = start_latitude
      @start_longitude = start_longitude
      @surge_confirmation_id = surge_confirmation_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      end_latitude = hash['end_latitude']
      end_longitude = hash['end_longitude']
      product_id = hash['product_id']
      start_latitude = hash['start_latitude']
      start_longitude = hash['start_longitude']
      surge_confirmation_id = hash['surge_confirmation_id']

      # Create object from extracted values
      RequestBody.new(end_latitude,
                      end_longitude,
                      product_id,
                      start_latitude,
                      start_longitude,
                      surge_confirmation_id)
    end
  end
end

# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module UberApi
  class TimeEstimate < BaseModel
    # Display name of product.
    # @return [String]
    attr_accessor :display_name

    # ETA for the product (in seconds). Always show estimate in minutes.
    # @return [Integer]
    attr_accessor :estimate

    # Unique identifier representing a specific product for a given latitude & longitude. For example, uberX in San Francisco will have a different product_id than uberX in Los Angeles.
    # @return [String]
    attr_accessor :product_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["display_name"] = "display_name"
        @hash["estimate"] = "estimate"
        @hash["product_id"] = "product_id"
      end
      @hash
    end

    def initialize(display_name = nil,
                   estimate = nil,
                   product_id = nil)
      @display_name = display_name
      @estimate = estimate
      @product_id = product_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        display_name = hash["display_name"]
        estimate = hash["estimate"]
        product_id = hash["product_id"]

        # Create object from extracted values
        TimeEstimate.new(display_name,
                         estimate,
                         product_id)
      end
    end
  end
end
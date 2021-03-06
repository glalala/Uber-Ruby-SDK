# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module UberApi
  class Product < BaseModel
    # Capacity of product. For example, 4 people.
    # @return [Integer]
    attr_accessor :capacity

    # Description of product.
    # @return [String]
    attr_accessor :description

    # Display name of product.
    # @return [String]
    attr_accessor :display_name

    # Image URL representing the product.
    # @return [String]
    attr_accessor :image

    # Unique identifier representing a specific product for a given latitude & longitude. For example, uberX in San Francisco will have a different product_id than uberX in Los Angeles.
    # @return [String]
    attr_accessor :product_id

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["capacity"] = "capacity"
        @_hash["description"] = "description"
        @_hash["display_name"] = "display_name"
        @_hash["image"] = "image"
        @_hash["product_id"] = "product_id"
      end
      @_hash
    end

    def initialize(capacity = nil,
                   description = nil,
                   display_name = nil,
                   image = nil,
                   product_id = nil)
      @capacity = capacity
      @description = description
      @display_name = display_name
      @image = image
      @product_id = product_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      capacity = hash['capacity']
      description = hash['description']
      display_name = hash['display_name']
      image = hash['image']
      product_id = hash['product_id']

      # Create object from extracted values
      Product.new(capacity,
                  description,
                  display_name,
                  image,
                  product_id)
    end
  end
end

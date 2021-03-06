# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module UberApi
  class Errors < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["code"] = "code"
        @_hash["status"] = "status"
        @_hash["title"] = "title"
      end
      @_hash
    end

    def initialize(code = nil,
                   status = nil,
                   title = nil)
      @code = code
      @status = status
      @title = title
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      code = hash['code']
      status = hash['status']
      title = hash['title']

      # Create object from extracted values
      Errors.new(code,
                 status,
                 title)
    end
  end
end

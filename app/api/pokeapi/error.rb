module Pokeapi
  module Errors
    class PokeapiError < StandardError; end
    
    class NotFoundError < PokeapiError
      def initialize(message = "Not found")
        super
      end
    end
    
    class ServerError < PokeapiError
      def initialize(message = "Internal server error")
        super
      end
    end

    def self.map(status_code)
      case status_code
      when 404
        NotFoundError
      when 500...600
        ServerError
      else
        PokeapiError
      end
    end

  end
end
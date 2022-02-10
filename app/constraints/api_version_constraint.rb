# frozen_string_literal: true

class ApiVersionConstraint
    attr_reader :version
  
    def initialize(options)
      @version = options.fetch(:version)
    end
  
    def matches?(request)
      request.headers.fetch(:accept).include?("application/vnd.dai_musica.v#{@version}+json")
    end
end
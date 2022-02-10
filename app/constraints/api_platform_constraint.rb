# frozen_string_literal: true

class ApiPlatformConstraint
    attr_reader :platform
  
    def initialize(options)
      @platform = options.fetch(:platform)
    end
  
    def matches?(request)
      request
        .headers
        .fetch("X-Platform")
        .include?(@platform)
    end
  end
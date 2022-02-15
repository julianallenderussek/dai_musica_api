# frozen_string_literal: true

module Helpers
    module Request
      def headers_for(client: nil, session_token: nil)
        headers = base_headers
  
        case client
        when :app
          headers.merge!(app_headers)
        when :dashboard
          headers.merge!(dashboard_headers)
        end
  
        headers.merge!(authenticated_headers(session_token, client)) if session_token
  
        headers
      end
  
      private
  
      def app_headers
        { "X-Platform" => "app" }
      end
  
      def authenticated_headers(session_token, audience)
        jwt_claims = {
          token: session_token.content,
          exp: 15.minutes.from_now.to_i,
          aud: audience,
        }
  
        { Authorization: "Bearer #{JsonWebToken.encode(jwt_claims)}" }
      end
  
      def base_headers
        { "Accept" => "application/vnd.daimusica.v1+json" }
      end
  
      def dashboard_headers
        {
          "X-Platform" => "dashboard",
        }
      end
    end
  end
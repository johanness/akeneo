# frozen_string_literal: true

require_relative './service_base.rb'

module Akeneo
  class AttributeService < ServiceBase
    def all(page=nil, limit=100)
      request_url = "/attributes?with_count=true"
      request_url = request_url + "&page=#{page}" if page
      request_url = request_url + "&limit=#{limit}"

      response = get_request(request)

      response.parsed_response if response.success?
    end

    def find(code)
      response = get_request("/attributes/#{code}")

      response.parsed_response if response.success?
    end

    def option(code, option_code)
      response = get_request("/attributes/#{code}/options/#{option_code}")

      response.parsed_response if response.success?
    end
  end
end

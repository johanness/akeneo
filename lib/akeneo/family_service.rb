# frozen_string_literal: true

require_relative './service_base.rb'

module Akeneo
  class FamilyService < ServiceBase
    def all(page=nil, limit=100)
      request_url = "/families?with_count=true"
      request_url = request_url + "&page=#{page}" if page
      request_url = request_url + "&limit=#{limit}"

      response = get_request(request)

      response.parsed_response if response.success?
    end

    def find(code)
      response = get_request("/families/#{code}")

      response.parsed_response if response.success?
    end

    def variant(code, variant_code)
      response = get_request("/families/#{code}/variants/#{variant_code}")

      response.parsed_response if response.success?
    end
  end
end

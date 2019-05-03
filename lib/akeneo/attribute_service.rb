# frozen_string_literal: true

require_relative './service_base.rb'

module Akeneo
  class AttributeService < ServiceBase
    def all
      response = get_request("/attributes")

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

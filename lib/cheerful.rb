# frozen_string_literal: true
require "cheerful/railtie"

require_relative "cheerful/version"

module Cheerful
  def self.modify_syntax_error_colour(error_message)
    "\e[35m#{error_message}\e[0m"  # Add magenta color escape sequences to the error message
  end
end

# frozen_string_literal: true



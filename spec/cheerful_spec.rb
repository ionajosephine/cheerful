# frozen_string_literal: true
require "spec_helper"
require "cheerful"

RSpec.describe Cheerful do
  it "has a version number" do
    expect(Cheerful::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  describe ".modify_syntax_error_color" do
    it "modifies the color of syntax errors" do
      # more test code here
    end
  end

  describe ".modify_syntax_error_color" do
    it "modifies the color of syntax errors" do
      error_message = "app/views/spots/index.html.erb:71: syntax error, unexpected `end'"
  
      modified_message = Cheerful.modify_syntax_error_colour(error_message)
  
      expect(modified_message).to include("\e[35m")  # Magenta color
      expect(modified_message).to include("\e[0m")   # Reset color
      expect(modified_message).to include("syntax error")  # Original error message
    end
  end
  
end






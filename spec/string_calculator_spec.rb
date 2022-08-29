require 'spec_helper'
require_relative '../string_calculator.rb'

describe StringCalculator do
    describe "#add" do
        it "returns 0 when empty string" do
            string_calculator = StringCalculator.new
            expect(string_calculator.add("")).to eq(0)
        end
    end
end
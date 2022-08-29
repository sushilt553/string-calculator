require 'spec_helper'
require_relative '../string_calculator.rb'

describe StringCalculator do

    let(:string_calculator) { StringCalculator.new }

    describe "#add" do
        it "returns 0 when empty string" do
            expect(string_calculator.add("")).to eq(0)
        end
        it "adds numbers and returns sum total" do
            expect(string_calculator.add("1")).to eq(1)
        end
    end
end
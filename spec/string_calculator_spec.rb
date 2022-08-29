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
            expect(string_calculator.add("1,2")).to eq(3)
            expect(string_calculator.add("1,2,3")).to eq(6)
            expect(string_calculator.add("1,2,3,4")).to eq(10)
            expect(string_calculator.add("1,2,3,4,5")).to eq(15)
        end
         it "handles new lines '\n', adds numbers and returns sum total" do
            expect(string_calculator.add("1\n2,3")).to eq(6)
         end
    end
end
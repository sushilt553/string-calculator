class StringCalculator
    def add(numbers)
        raise "negatives not allowed - #{numbers}" if numbers.include?('-')
        numbers.split("").map{|num| num.to_i}.sum
    end
end
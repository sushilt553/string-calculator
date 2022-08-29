class StringCalculator
    def add(numbers)
        numbers.split(",").map{|num| num.to_i}.sum
    end
end
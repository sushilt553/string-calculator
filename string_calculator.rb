class StringCalculator
    def add(numbers)
        numbers.split(",").map do |num| 
            if num.include?("\n")
                num.split("\n").map{|n| n.to_i}.sum
            else
                num.to_i
            end
        end.sum
    end
end
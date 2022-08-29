class StringCalculator
    def add(numbers)
        0 if numbers == ''
        nums_arr = numbers.split(",")
        sum = 0

        nums_arr.each do |num|
            sum += num.to_i
        end
        sum
    end
end
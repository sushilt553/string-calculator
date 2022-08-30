class StringCalculator

    def initialize
        @count = 0
    end

    def add(numbers)
        @count += 1
        negatives = []
        nums_arr = numbers.split("")
        sum = 0
        nums_arr.each_with_index do |num, idx|
            if num == '-'
                n = nums_arr[idx + 1].to_i
                if n > 0
                    negatives << -n
                end
            end
            
            int_num = num.to_i
            if int_num < 0
                negatives << int_num
            else
                sum += int_num
            end
        end
        if negatives.empty?
            sum
        elsif negatives.length == 1
            raise "negatives not allowed - #{negatives[0]}"
        else
            raise "negatives not allowed - #{negatives.join(", ")}"
        end
    end

    def getCalledCount
        @count
    end
end
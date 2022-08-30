require_relative './string_calculator.rb'

puts "LET'S CALCULATE"

calculator = StringCalculator.new

def play_more(calculator)
    puts "Enter any string to calculate the sum of the numbers in the string"
    string = gets.strip

    sum = calculator.add(string)
    puts "Total Sum = #{sum}"
    puts "Total Addition Count = #{calculator.getCalledCount}"

    puts "Do you want to calculate more? If yes enter 'y'."
    yes_no = gets.strip

    if yes_no == 'y'
        play_more(calculator)
    else
        puts 'HAVE A NICE DAY!'
        return
    end
end

play_more(calculator)
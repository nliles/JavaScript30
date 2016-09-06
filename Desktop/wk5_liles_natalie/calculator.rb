def calculator(num1,operator, num2)
if operator == '+'
    return num1 + num2
elsif operator == '-'
    return num1 - num2
elsif operator == '*'
    return num1 * num2
elsif operator == '/'
    return num1 / num2
else 
	return "invalid entry"
end
end

# puts calculator(5,'+',4)
# puts calculator(10,'-',3)
# puts calculator(1,'*',3)
# puts calculator(6,'/',3)

puts "Would you like to perform a calculation? (Answer yes or type 'quit')"
answer = gets.chomp
array = []
until answer == "quit"
    puts "Please enter a number:"
    num1 = gets.to_i 
    puts "Select: '+' to add, '-' to subract, '/' to divide, '*' to multiply:"
    operator = gets.chomp 
    puts "Please enter another number:"
    num2 = gets.to_i
    "#{calculator(num1,operator,num2)}"
    array << "#{num1} #{operator} #{num2} = #{calculator(num1,operator,num2)}"
    puts "Would you like to perform another calculation? (Answer yes or type 'quit')"
    answer = gets.chomp 
end
calculations = array.count
puts "#{calculations} calculations performed."
puts array
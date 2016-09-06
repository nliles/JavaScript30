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
	puts "invalid entry"
end
end

puts calculator(5,'+',4)
puts calculator(10,'-',3)
puts calculator(1,'*',3)
puts calculator(6,'/',3)

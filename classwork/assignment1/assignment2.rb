puts "Enter two numbers"
a=gets.chomp.to_i
b=gets.chomp.to_i
puts "1.Addition","2.Subtraction","3.Multiplication","4.Division"
puts "Enter choice"
cal=gets.to_i
if cal!=5
case cal
when 1
sum=a+b
puts "sum is: ",sum
when 2
sub=a-b
puts "Subtration of given two numbers is: ",sub
when 3
mul=a*b
puts "Multiplication of given two numbers is:",mul
when 4
div=a/b
puts "Division of two numbers is:",div
end
else
puts "Enter a valid choice"
end

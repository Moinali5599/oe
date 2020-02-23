arr=Array.new()
begin
puts "Enter choice"
puts "1.Add value","2.Display array","3.Max","4.Min","5.sum","6.avg","7.search","8.delete valve by index","9.delete value","10.exit"
ch=gets.chomp.to_i
case ch
when 1
val=gets.chomp.to_i
a=arr.push(val)
when 2
puts "#{arr}"
when 3
ma=arr.max
puts ma
when 4
mi=arr.min
puts mi
when 5
sum=0
arr.each do |i|
sum=sum+i
end
puts "The sum of array elements is: #{sum}"
when 6
len=arr.length
if len>0
sum=0
arr.each do |i|
sum=sum+i
end
else
puts "No elements in array"
end
avg=sum/len
puts "Average of array elements is:  #{avg}"
when 7
len=arr.length
if len>0
puts "Enter the number to search"
search=gets.chomp.to_i
arr.each do |i|
if search == i
ind=arr.index(search)
puts "The searched valve is present in the array and its index is #{ind}"
else
puts "the searched value is not present in the array"
end
end
else
puts "No elements in array"
end
when 8
puts "Enter the index"
index=gets.chomp.to_i
arr.delete_at(index)
puts "Value at given index is deleted","Modified array:#{arr}"
when 9
puts "Enter the value to delete"
val=gets.chomp.to_i
arr.delete(val)
puts "Given value is deleted from the array ","Modified array is: #{arr}"
end
end while ch!=10

arr=Array.new()
begin
puts "1.Add mail id","2.display all mail ids","3.display all edu mail ids","4.search","5.delete mail id by value","6.display unique domains of all mail ids","7.count ids in given domain","8.exit"
puts "enter choice"
ch=gets.chomp.to_i
case ch
when 1
mailid=gets.chomp.to_s
a=arr.push(mailid)
when 2
puts "#{arr}"
when 4
puts "Enter the email to search"
smail=gets.chomp.to_s
count=0
for i in arr do
if i == smail
count=count+1
end
end
if count > 0
puts "Mail id is present in list"
else
puts "Mail id is not present in list"
end
end
end while ch!=8

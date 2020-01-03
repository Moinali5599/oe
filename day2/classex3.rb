class Student
attr_accessor :name, :department, :cgpa
def initialize(name, dept, cgpa)
@name=name
@department=dept
@cgpa=cgpa
end
def has_oe
if @cgpa >= 7.5
return true
end
return false
end
end
puts "Enter name of student"
nam=gets.chomp
puts "Enter name of department"
depart=gets.chomp
puts "Enter cgpa of the student"
cg=gets.chomp.to_i
student1=Student.new(nam, depart, cg)
if student1.has_oe == true
puts  "Elgible for OE"
end


class A
def ob1
puts "parent class"
end
end
class B < A
def ob2
puts "child class"
end
end
obj1=A.new
puts obj1.ob1
obj2=B.new
puts obj2.ob1
puts obj2.ob2

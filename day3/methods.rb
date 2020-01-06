class Methd
def without_methods(arg)
@arg=arg
puts "Without using methods" + #@agr
end
def with_methods(ar)
@arg2=ar
puts "used upcase method" + #@agr2.upcase
end
end
ob1=Methd.new("Argument")
ob1.withod_method
ob1.with_methods

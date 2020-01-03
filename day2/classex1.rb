class PRINTER
def line
puts "Type the line to print"
line=gets.chomp
puts "Printed line is " + line
end
end
obj=PRINTER.new
obj.line

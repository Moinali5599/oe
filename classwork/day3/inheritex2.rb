class Name
def initialize(first,middle,last)
@first_name=first
@middle_name=middle
@last_name=last
end
def full_name
puts "#@first_name #@middle_name #@last_name"
end
def to_s
full_name
end
end
nam=Name.new("My", "Full", "Name")
puts nam.full_name

class Civilstudent
attr_accessor:name, :hometown, :hobby
def initialize(name,ht,hobby)
@name=name
@ht=ht
@hobby=hobby
end
end
class Interview < Civilstudent
attr_accessor:skill
def tell_name
puts "My name is #@name"
end
def tell_hometown
puts "I'm from #@ht"
end
def tell_hobby
puts "My hobby is #@hobby"
end
def your_skill(skill)
@skill=skill
puts "My skill is #@skill"
end
end
std1=Interview.new("Ashwin","Chennai","Singing")
std1.tell_name
std1.tell_hometown
std1.tell_hobby
std1.your_skill("Structural analysis")

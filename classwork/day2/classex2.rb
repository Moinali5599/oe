class Conca
def initialize(x,y)
@word1=x
@word2=y
@concat=x+y
puts "Concateneted string : #@concat"
end
end
sconcat=Conca.new("this is word1 ","this is word2")

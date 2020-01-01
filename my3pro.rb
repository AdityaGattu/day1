class Book
 def initialize(aName)
   @name=aName
 end
 def set_name(aName)
  @name=aName   #@ for member of class.(local variable.)
 end
 def get_name
    return @name
 end
end

book1=Book.new("adi")
#book1.set_name("wind mils of god.")

puts book1.get_name

book2=Book.new("The davinci code.")
puts book2.get_name

#creating object
#obj1=cls1.new
#obj1.hello

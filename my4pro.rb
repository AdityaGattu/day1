#::::::::::::::::::::::::::::::::::::::classes and objects:::::::::::::::::::::::::::::::::::::::::#
class Book
    attr_reader :title, :author, :price #create instance variable @title
    attr_writer :title, :author, :price
    
    def is_price_high?
      @price=500
        if @price>1000
             return true
        else
             return false
        end
    end
end

b2=Book.new
b2.title="the davinci code"
b2.author="dan brown"
b2.price=2000

puts b2.title
puts b2.author
puts b2.is_price_high?


#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::#

class Book
  def title 
    return @title  
 end
 def author 
    return @author  
 end

 def title=(aTitle) #for set_title
    @title=aTitle
 end

 def author=(aAuthor) #for set_title
    @author=aAuthor
 end
end

b2=Book.new
b2.title="the davinci code"
b2.author="dan brown"

puts b2.title
puts b2.author

#::::::::::::::::::::::::::::::::::::::::::::::calculator:::::::::::::::::::::::::::::::::::::::::::::::#

def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [add], [multiply], or [subtract]?"
response = gets.chomp

case response.downcase
when 'add'
  puts "Which numbers would you like to add?"
  operator = :+

when 'subtract'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*

end

answer = get_int_values.inject(operator)
puts "The answer is... #{ answer }"



#::::::::::::::::::::::::::::::::::::::::::::::calculator:::::::::::::::::::::::::::::::::::::::::::::::#

puts "Would you like to 
    0 ---- [exit],  
    1 ---- [add], 
    2 ---- [subtract], 
    3 ---- [multiply], 
    4 ---- [divide]"
response = gets.chomp

case response.downcase
when '1'
def addition_function
            puts "Which numbers would you like to add?"
            n1 = gets.to_i
            n2 = gets.to_i
            answer = n1 + n2
            puts "The sum is... #{n1} + #{n2} = #{answer}"
end
addition_function()


#Subtract
when '2'
def subtraction_function
            puts "Which numbers would you like to subtact?"
            n1 = gets.to_i
            n2 = gets.to_i
            answer = n1 - n2
            puts "The subtraction is... #{n1} - #{n2} = #{answer}"
end
subtraction_function()
#Multiply
when '3'
def multiplication_function
            puts "Which numbers would you like to multiply?"
        n1 = gets.to_i
            n2 = gets.to_i
            answer = n1 * n2
            puts "The multiplication is... #{n1} * #{n2} = #{answer}"
end
multiplication_function()


#Division
when '4'
    def division_function
            puts "Which numbers would you like to divide?"
            n1 = gets.to_i
            n2 = gets.to_i
            answer = n1 / n2
            puts "The division is... #{n1} / #{n2} = #{answer}"
    end
division_function()

else '0'
    puts "Exit! Thank You for using us!"
end



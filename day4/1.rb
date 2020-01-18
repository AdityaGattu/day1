class Stu
    def initialize()
    stu1=Array.new    
    end
    
   def add(rollno1,name1,state1,branch1,cgpa1)
   @rollno=rollno1
   @name=name1
   @state=state1
   @branch=branch1
   @cgpa=cgpa1
   end
  
   def display()
      
   end
end

stu=Stu.new
puts "enter the choice : \n"
option=gets.chomp
case option
 when '1'
   puts "enter the name of the student: "
   gets.chomp
   puts "enter the ROLL_NO of the student: "
   gets.chomp.to_i
   puts "enter the state of the student: "
   gets.chomp
   puts "enter the branch of the student: "
   gets.chomp
   puts "enter the cgpa of the student: "
   gets.chomp.to_f
 when '2'
   puts "inorder to exit: "
   gets.chomp
 break
end

 

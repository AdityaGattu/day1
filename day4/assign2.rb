#..................................problem 2....................................................#
array=[]
flag=true
while flag
    puts ".................Choose an option................................................"
    puts "1.Add a value \n2.Find Minimum \n3.Find Maximum  \n4.Find Sum \n5.Find Average\n"\
     "6.Search an element \n7.Display \n8.Delete an element by index \n9.To Delete a value \n10 exit"
    option=gets.chomp.to_i
    
    case option
        when 1
            puts "enter value to add"
            val=gets.chomp.to_i
            array.push(val)
        when 2
            puts "minimum value is : "
            puts array.min
        when 3
            puts "maximum value is : "
            puts array.max
        when 4
            puts "The total sum is : "
            puts array.sum
        when 5
            puts "The total average is : "
            puts array.sum/array.length
        when 6
            puts "enter value to search"
            t=gets.chomp.to_i
            temp=array.index(t)
            if temp
                puts "value found ar #{temp}"
            else
                puts "value not found"
            end
        when 7
            puts "The array elements are : "
            puts array
        when 8
            puts "enter index"
            t=gets.chomp.to_i
            array.delete_at(t)
        when 9
            puts "enter value to delete"
            t=gets.chomp.to_i
            array.delete(t)
        when 10
            flag=false
        else
            puts "enter valid number"

    end
end

#......................................problem 3...................................................#
array=[]
flag=true
while flag
    puts "1.To Add mail id \n2.To Display all mails \n3.To Display edu mails\n"\
    "4.Search \n5.To Delete id by value \n6.display unique ids\n"\
    "7.count ids \n8. exit\n"
    option=gets.chomp.to_i
    case option
        when 1
            puts "enter mail id to add"
            id=gets.chomp
            ar<< id                                   
        when 2            
            puts array           
        when 3
            puts array.select { |id| id.end_with?("edu")}
        when 4
            puts "enter id to search"
            id=gets.chomp
            puts array.detect {|idd| id==idd}
        when 5
            puts "enter id to delete"
            id=gets.chomp
            array.delete(id)
        when 6
            puts "Dont know"
        when 7
            puts "Enter domian name"
            d=gets.chomp
            c=0
            array.each do |id|
                if id.end_with?(d)
                    c+=1
                end
            end
            puts c
        when 8
            flag=false
        else
            puts "Invalid option"
        end
    end

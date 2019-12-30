#::::::::::::::::::STRINGS IN RUBY::::::::::::::::::::::::::::::#
p "aditya".upcase  #p means print
p "AditYA".downcase
p "aditya".reverse
p "aditya".reverse.upcase #method chaining
m="milk".downcase! # ! indicates no updation is done for give data so returns nil and m here is avariable
 p m
n="milk".upcase!
p n    

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::#


puts "aditya\" gattu"
#or
phrase="aditya\" gattu"
puts phrase.upcase()

phrase="        aditya  gattu         "#for removing traling(spaces at first and last)spaces.
puts phrase.strip()
puts phrase.length()#including white spaces
puts phrase.include? "gattu" #returns true if present

phrase1="aditya gattu"
puts phrase1[4] #index starts from 0
puts phrase1[0,3] #index starts from 0 and end with 3(not included)
puts phrase1.index("t") #returns index at which charcter is present.


#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::#



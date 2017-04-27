#puts [*1,2,3,4,5,6,7,8,9,10].inject{|i,m|m=m+i}
#puts -[*1,2,3,4,5,6,7,8,9].inject{|i,m|m=m+i}  + 55
#puts -[*1,2,3,4,5,6,7,8,10].inject{|i,m|m=m+i} + 55
#puts -[*1,2,3,4,5,6,7,9,10].inject{|i,m|m=m+i} + 55
#puts -[*1,2,3,4,5,6,8,9,10].inject{|i,m|m=m+i} + 55
#puts -[*1,2,3,4,5,7,8,9,10].inject{|i,m|m=m+i} + 55
#puts -[*1,2,3,4,6,7,8,9,10].inject{|i,m|m=m+i} + 55
#puts -[*1,2,3,5,6,7,8,9,10].inject{|i,m|m=m+i} + 55
#puts -[*1,2,4,5,6,7,8,9,10].inject{|i,m|m=m+i} + 55
#puts -[*1,3,4,5,6,7,8,9,10].inject{|i,m|m=m+i} + 55
#puts -[*2,3,4,5,6,7,8,9,10].inject{|i,m|m=m+i} + 55

#puts -gets.split.map(&:to_i).inject{|i,m|m+=i} + 55
puts -gets.split.map(&:to_i).inject(:+)+55


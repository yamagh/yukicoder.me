A=gets.split.map(&:to_i)
three,one=0,0
A.each{|a|three=A.count(a)==3 ? three+1 : three}
A.each{|a|one  =A.count(a)==2 ? one+1   : one}
if three/3==1 && one/2==1
  puts "FULL HOUSE"
elsif three/3==1
  puts "THREE CARD"
elsif one/2==2
  puts "TWO PAIR"
elsif one/2==1
  puts "ONE PAIR"
else
  puts "NO HAND"
end


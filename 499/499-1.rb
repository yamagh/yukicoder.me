n,a=gets.to_i,gets.split.map(&:to_i)
dry=moist=wet=[]
a.combination(2){|a,b|dry.push([a,b].sort)   if a+b<0}
a.combination(2){|a,b|moist.push([a,b].sort) if a+b==0}
a.combination(2){|a,b|wet.push([a,b].sort)   if a+b>0}
#puts "#{dry} #{moist} #{wet}"
p dry

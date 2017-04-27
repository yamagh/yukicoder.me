N=gets.to_i
G=(1..N).map{gets.split.map(&:to_i)}
exp=G.map{|m|m[0]-(m[1]*30000)}
max=exp.max
if max*6<30000*100
  puts "NO"
else
  puts "YES"
  6.times{puts exp.index(max)+1}
end


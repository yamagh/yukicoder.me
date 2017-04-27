N=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)

r=Array.new(b.max+1,0)
(0..N-1).each{|i|r[b[i]]+=a[i]}

puts r.max == r[0] ? "YES" : "NO"


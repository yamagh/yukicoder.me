N=gets.to_i
A=gets.split.map(&:to_i).uniq
dp=Array.new(N+1).map{Array.new(N+1,0)}

(0..N).each do |y|
  (y+1..N).each do |x|
    dp[y][x]=y^x
  end
end

a=A.each_slice(1).to_a
a<<A.dup
(2..A.size-1).each{|e|A.combination(e).to_a.each{|c|a<<c}}
p a

dp.each{|e|p e}


N=gets.to_i
A=gets.split.map(&:to_i)

cnt=0
(N-2).times do |t|
  x,y,z=s=A.slice(t,3)
  next if s.uniq.size != 3 
  cnt+=1 if (x!=s.max && x!=s.min) || (z!=s.max && z!=s.min)
  #puts "t:#{t} x:#{x} y:#{y} z:#{z} max:#{s.max} min:#{s.min} cnt:#{cnt}"
end
p cnt


s,t,u=gets.split
t=t.to_i
u=u.to_i
if t==u 
  s.slice!(t)
elsif t < u
  s.slice!(u)
  s.slice!(t)
else
  s.slice!(t)
  s.slice!(u)
end
puts s


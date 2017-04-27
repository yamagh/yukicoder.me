s,t,u=gets.split
puts s.chars.tap{|a|a[t.to_i]=''}.tap{|a|a[u.to_i]=''}*''


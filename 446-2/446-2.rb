def check(n)
  return false if n !~ /^\d+$/
  return false if n =~ /^0\d/
  return false if 12345 < n.to_i
  true
end

puts check(gets) && check(gets) ? :OK : :NG

#A,B=gets,gets
#if A !~ /^\d+$/ || B !~ /^\d+$/
#  puts :NG
#elsif A =~ /^0\d/ || B =~ /^0\d/
#  puts :NG
#elsif 12345 < A.to_i || 12345 < B.to_i
#  puts :NG
#else
#  puts :OK
#end



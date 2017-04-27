n,k=gets.split.map(&:to_i)
#if n==k
#  puts :Drew
#elsif n==0 && k==1
#  puts :Won
#elsif n==0 && k==2
#  puts :Lost
#elsif n==1 && k==0
#  puts :Lost
#elsif n==1 && k==2
#  puts :Won
#elsif n==2 && k==0
#  puts :Won
#elsif n==2 && k==1
#  puts :Lost
#end

puts %w(Drew Lost Won)[n-k]

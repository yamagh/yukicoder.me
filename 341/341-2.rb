化石=gets.split('.').map(&:to_i)
対象=gets.split('.').map(&:to_i)

if 化石[0]<対象[0]
  puts "NO"
elsif 対象[0]<化石[0]
  puts "YES"
elsif 化石[1]<対象[1]
  puts "NO"
elsif 対象[1]<化石[1]
  puts "YES"
elsif 化石[2]<対象[2]
  puts "NO"
else
  puts "YES"
end

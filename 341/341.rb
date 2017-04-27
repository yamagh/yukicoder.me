KASEKI=gets.split('.').map(&:to_i)
TARGET=gets.split('.').map(&:to_i)

if KASEKI[0]<TARGET[0]
  puts "NO"
elsif TARGET[0]<KASEKI[0]
  puts "YES"
elsif KASEKI[1]<TARGET[1]
  puts "NO"
elsif TARGET[1]<KASEKI[1]
  puts "YES"
elsif KASEKI[2]<TARGET[2]
  puts "NO"
else
  puts "YES"
end

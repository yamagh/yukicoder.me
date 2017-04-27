user1=gets.chomp.split
user2=gets.chomp.split
if user1[1] == user2[1]
  p -1
else
  puts user1[1].to_i < user2[1].to_i ? user2[0] : user1[0]
end


AZ=('A'..'Z').to_a
puts gets.chomp.split('').map.with_index(1){|c,i|AZ[ AZ.index(c) - i%26 ]}*''


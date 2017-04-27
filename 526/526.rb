c=[gets.chomp, gets.chomp]*''
p c.count('x') == 14 ? 0 : c.scan(/o+/).map{|m|m.size}.max


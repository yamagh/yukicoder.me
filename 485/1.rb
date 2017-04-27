n,a=gets,gets.to_s.split.map(&:to_i)
puts a.count{|c|a.count(c)==1}

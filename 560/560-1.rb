a,b=gets.split.map(&:to_i)
(a..b).each{|i|puts i if 0<i.to_s.split('').count('3') || i%3==0}

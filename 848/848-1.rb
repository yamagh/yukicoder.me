def zzz(i)
  return 4 if i%15==0
  return 2 if i%5 ==0 || i%3==0
  0
end

n = gets.to_i
p [*1..n].inject(0) {|m,i| m+zzz(i)}


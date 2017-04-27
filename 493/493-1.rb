m,d=gets.split.map(&:to_i)
r=0
1.upto(m) do |month|
  mm=month.to_s.split.inject(:+)
  1.upto(d) do |day|
    dd=day.to_s.split.inject(:+)
    r+=1 if mm==dd
  end
end
puts r%1_000_000_009

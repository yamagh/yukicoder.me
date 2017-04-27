n=gets.to_i
lines=n.times.map{gets.split.map(&:to_i)}
max_col=lines.inject(0){|m,l|c=l[0]+l[1]*4; m<c ? c:m}
puts lines.inject(0) do |c,l|
  d=max_col-l[0]+l[1]*4
  if (max_col-d).even? 
    c = max_col-d
  else
    c = -1
  end
end

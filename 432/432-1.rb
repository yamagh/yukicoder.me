bef, n, aft = gets, gets.to_i, gets

o, x = bef.count('o'), bef.count('x')

if bef.count('o') != aft.count('o')
  puts :SUCCESS
  exit
end

if o == 3 || o == 0
  puts :FAILURE
  exit
end

if n==0 && bef!=aft
  puts :SUCCESS
  exit
end

sign = o<x ? 'o' : 'x'
idx  = bef.index(sign) 

if idx.odd?
  if n == 0
    puts bef==aft ? :FAILURE : :SUCCESS
  elsif n.even?
    puts :FAILURE
  else
    puts aft.index(sign)==idx ? :SUCCESS : :FAILURE
  end
else
  aft_idx = aft.index(sign)
  if n == 0
    puts bef==aft ? :FAILURE : :SUCCESS
  elsif n.even?
    puts aft_idx.even? ? :FAILURE : :SUCCESS
  else
    puts (idx==0 && aft_idx==2) || (idx==2 && aft_idx==0) ? :SUCCESS : :FAILURE
  end
end


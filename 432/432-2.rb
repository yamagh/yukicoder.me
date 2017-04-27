b, n, a = gets, gets.to_i, gets

if b.count('o') != a.count('o')
  puts :SUCCESS
  exit
end

if n==0
  puts b==a ? :FAILURE : :SUCCESS
elsif n==1
  sign = b.count('o') < b.count('x') ? 'o' : 'x'
  bidx = b.index(sign)
  aidx = a.index(sign)
  if bidx.odd?
    puts bidx==aidx ? :SUCCESS : :FAILURE
  elsif
    puts (bidx-aidx).abs == 2 ? :SUCCESS : :FAILURE
  end
else
  puts :FAILURE
end


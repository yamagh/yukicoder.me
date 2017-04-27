=begin
   A ->   0 0...0
   Z ->  25 0...25
  AA ->  26 1...0
  AZ ->  51 1...25
  BA ->  52 2...0
  BZ ->  77 2...25
  ZZ -> 701 26...25
 AAA -> 702 27...0
=end

n = gets.to_i
az=[*'A'..'Z']
r=[]
while 0<=n do
  r.push(az[n%26])
  break if n==0
  n=(n/26)-1
end
puts r.reverse*''


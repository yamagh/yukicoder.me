N=gets.to_i
X=gets.split.map(&:to_i).uniq.sort

d=1_000_001
for i in (1..X.size-1)
  a = (X[i]-X[i-1]).abs
  d = a if a<d
end
p d==1_000_001 ? 0 : d


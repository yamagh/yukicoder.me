L=gets.to_i
N=gets.to_i
W=gets.split.map &:to_i
cnt=0
sum=0
r=W.sort.each.with_index(1) do |v,i|
  if sum+v <= L
    sum+=v
    cnt+=1
  end
end
puts cnt


S=gets.chomp
a=[]
for x in (0..S.size-1)
  for i in (1..S.size-x)
    s=S[x,i]
    a.push s if s==s.reverse && s!=S
  end
end
p a.inject(""){|b,c|b.size<c.size ? c : b}.size


N=gets.to_i
a=[]
while gets
  a.push $_.to_i < N ? $_.to_i : -1
end
p a

if a.uniq.size==1
  p -1
else
  r=Array.new(N,-1)
  for i in 0..N-1
    if a[i+1]==-1
      puts "case:1"
      r[i]=r.max+1
    elsif a[i+1]==a[i] && r.max+1!=a[i]
      puts "case:2"
      r[i]=r.max+1
    elsif a[i+1]==a[i] && r.max+1==a[i]
      puts "case:3"
      r[i]=r.max+2
    elsif a[i+1].nil?
      puts "case:4"
      r[i]=a[0]
    else
      puts "case:5"
      r[i]=a[i+1]
    end
  end
  r.each{|e|p e}
end


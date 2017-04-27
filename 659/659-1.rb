N=gets.to_i
a=[]
N.times{a.push(gets.split)}
r=a.transpose.map{|m|m.count("nyanpass")==N-1}
puts r.count(true)==1 ? r.index(true)+1 : -1


#N=gets.to_i
#a=[]
#$<.read.split(/\n/).map do |l|
#  a << :a if l=="ne"
#  a << :b if l=="ushi"
#  a << :c if l=="tora"
#  a << :d if l=="u"
#  a << :e if l=="tatsu"
#  a << :f if l=="mi"
#  a << :g if l=="uma"
#  a << :h if l=="hitsuji"
#  a << :i if l=="saru"
#  a << :j if l=="tori"
#  a << :k if l=="inu"
#  a << :l if l=="i"
#end
#
#100000.times do
#  c = a.reduce{|m,r| m==false ? false : (m==r ? false : r)}
#  if c!=false
#    puts "YES"
#    exit
#  end
#  a.shuffle!
#end
#puts "NO"

N=gets.to_i
a=Hash.new(0)
$<.read.split(/\n/).map{|l|a[l]+=1}
m=a.max_by(&:last)[1]
puts m <= (N/2.0).ceil ? "YES" : "NO"


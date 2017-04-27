n=[2,3,5,7,11,13].product([4,6,8,9,10,12]).map{|i|i[0]*i[1]}
p "%19f" % (n.count(gets.to_f) / n.count.to_f)


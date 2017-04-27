n=gets.to_i
p [gets.strip.split(''), gets.strip.split('')].transpose.count{|i|i[0]!=i[1]}


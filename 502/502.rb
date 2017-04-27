N=gets.to_i
C=gets.split.map(&:to_f)
m=C.inject(:+)
if m==0
  p C.size * 30
else
  p C.map{|i|i*100/m}.select{|s|s<=10}.size * 30
end


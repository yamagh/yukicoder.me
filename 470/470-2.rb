exist=Array.new(32768,false)
exist[0]=true

N=gets.to_i
A=gets.split.map(&:to_i)

A.each do |i|
  (1..32768).each do |j|
    if exist[j]
      exist[j ^ i] = true
    end
  end
end

exist.each_slice(25).to_a.each{|e|p e}


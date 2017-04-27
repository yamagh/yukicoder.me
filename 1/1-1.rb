n=gets.to_i
items=[]
n.times do |t|
  gets.split.map(&:to_i).each{|i|items.push(i)}
end

p times


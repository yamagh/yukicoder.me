#gets=~/(c[^cw]*?w[^cw]*?w)/
#puts $1.nil? ? -1 : $1.length

#if m=gets.match(/c.*?w.*?w/)
#  p m.to_a.map{|i|i.length}.min
#else
#  p -1
#end

#m=gets.match(/c.*?w.*?w/)
#p m.nil? ? -1 : m.to_a.map{|i|i.length}.min
#p m.to_a

#gets=~/(c[^cw]*?w[^cw]*?w)/
#if $1.nil?
#  p -1
#else
#  $1.reverse=~/w.*?w.*?c/
#  p $1.length
#end

#m=gets.match(/c.*?w.*?w.*?/)
#if m.nil?
#  p -1
#else
#  n=m[0].reverse.match(/w.*?c.*?c.*?/)
#  p n
#  p n[0].length
#end

#p gets.gsub(/c+/,"c")
#m=gets.gsub(/c+/,"c").match(/c.*?w.*?w/)
#p m.nil? ? -1 : m[0].length

memo=Array.new(4).map{Array.new(101,0)}
s=gets.chomp
["c","w","w"].map do |y|
  s.to_a.map do |x|
    
  end
end
p memo


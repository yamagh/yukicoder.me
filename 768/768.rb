n=Array.new(10,0)
(0..9).each do |x|
  (0..9).inject(-1) do |curr,y|
    puts "curr:#{curr} y:#{y}"
    prev = prev==-1 ? -1 : curr
    n[x]=y
    puts n.join
    STDOUT.flush
    curr=gets.split[0].to_i
    exit if curr==10
    unless prev==-1
      n[x]=curr if prev < curr
      n[x]=prev if curr < prev
      break if prev!=curr
    end
  end
end

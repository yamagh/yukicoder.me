H,W=gets.split.map &:to_i
N=gets.to_i
S,K=[],[]
$<.read.split(/\n/).map do |m|
  s,k=m.split
  S << s
  K << k
end

puts [:white, :black].sample


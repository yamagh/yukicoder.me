N,H,M,T = gets.split.map(&:to_i)
m=(N-1)*T
p (H+m/60)%25
p (M+m%60)%60


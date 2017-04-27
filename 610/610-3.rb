n,m=gets.split.map(&:to_i)
S=gets.chomp
T=gets.chomp
dp = Array.new(n).map{Array.new(m,0)}
(0..(n-1)).each do |x|
  (0..(m-1)).each do |y|
    match=(S[x]==T[y]) ? 1 : 0
    dp[x][y]=[dp[x-1][y-1]+match, dp[x-1][y], dp[x][y-1]].max
  end
end
p dp[n-1][m-1]


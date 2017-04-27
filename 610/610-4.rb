n,m=gets.split.map(&:to_i)
S=gets.chomp
T=gets.chomp
dp = Array.new(n+1).map{Array.new(m+1,0)}
(0..(n-1)).each do |x|
  (0..(m-1)).each do |y|
    dp[x+1][y+1] = S[x]==T[y] ? [dp[x][y], dp[x+1][y+1]].min : [dp[x][y]+1, dp[x+1][y+1]].min
    dp[x+1][y] = [dp[x][y], dp[x+1][y]].min
    dp[x][y+1] = [dp[x][y], dp[x][y+1]].min
  end
end
p dp[n-1][m-1]


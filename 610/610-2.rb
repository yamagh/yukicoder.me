n,m = gets.split.map(&:to_f)
S = gets.chomp
T = gets.chomp

dp = Array.new(n).map{Array.new(m,0)}
(0..(n-1)).each do |y|
  (0..(m-1)).each do |x|
    match = S[y-1]==T[x-1] ? 1 : 0
    p "1:dp[y-1][x-1] + match: " + (dp[y-1][x-1] + match).to_s
    p "2:dp[y-1][x]: " + (dp[y-1][x]).to_s
    p "3:dp[y][x-1]: " + (dp[y][x-1]).to_s
    value = [dp[y-1][x-1] + match, dp[y-1][x], dp[y][x-1]].max
    dp[y][x] = value
    p dp
  end
end

p dp[n-1][m-1]


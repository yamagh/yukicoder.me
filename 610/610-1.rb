N,M=gets.split.map(&:to_i)
S=gets.chomp
T=gets.chomp
INF=10000
dp = Array.new(N+2).map{Array.new(M+2,INF)}
dp[0][0]=0

(0..N).each do |s|
  (0..M).each do |t|
    if(S[s]==T[t])
      dp[s+1][t+1] = [dp[s+1][t+1], dp[s][t]].min
    else
      dp[s+1][t+1] = [dp[s+1][t+1], dp[s][t]+1].min
    end
    dp[s+1][t] = [dp[s+1][t], dp[s][t]+1].min
    dp[s][t+1] = [dp[s][t+1], dp[s][t]+1].min
    puts "S[s]:#{S[s]} T[t]:#{T[t]} dp[s+1][t]:#{dp[s+1][t]} dp[s][t+1]:#{dp[s][t+1]}"
  end
end
puts dp[N][M]


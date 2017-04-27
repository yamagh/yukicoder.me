N=gets.to_i  # Nodes (2<=N<=50)
C=gets.to_i  # Costs (1<=C<=300)
V=gets.to_i  # Edges (1<=V<=1500)
S=gets.split.map{|m|m.to_i-1}  # FromTownNo
T=gets.split.map{|m|m.to_i-1}  # DestTownNo
Y=gets.split.map &:to_i        # Cost
M=gets.split.map &:to_i        # Time
MAX=999

tym=Array.new(S).map{Array.new(0)}
S.each.with_index{|e,i| tym[e] << { t: T[i], y:Y[i], m:M[i] }}

dp=Array.new(N).map{Array.new(C+1,MAX)}
dp[0][0]=0

N.times do |n|
  C.times do |c|
    next if dp[n][c]==MAX
    next if tym[n].nil?
    tym[n].each do |e|
      et=e[:t]
      ey=e[:y]+c
      next if C<ey
      em=e[:m]+dp[n][c]
      dp[et][ey]=[em, dp[et][ey]].min
    end
  end
end

#dp.each{|e|p e}

ans = [dp[N-1].min, MAX].min
puts ans==MAX ? -1 : ans


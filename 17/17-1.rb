N=gets.to_i
C=gets.to_i
V=gets.to_i
S=gets.split.map(&:to_i).map{|m|m-1}
T=gets.split.map(&:to_i).map{|m|m-1}  # 行き先の町番号
Y=gets.split.map &:to_i               # コスト
M=gets.split.map &:to_i               # 単位時間
MAX=999

# 入力データを処理しやすいように変換して配列 e に格納する
e=[]
S.each.with_index do |v,i|
  e[v]||=[]
  e[v] << { t: T[i], y: Y[i], m: M[i] }
end

# DP 用の配列を作成
# 添字:
#   1 次元目: 町の番号
#   2 次元目: コスト
# 値:
#   移動時間
dp=Array.new(N).map{Array.new(C+1,MAX)}

# 最初のノードにおける移動時間は 0 として初期化
dp[0][0]=0

(N).times do |n|
  (C+1).times do |c|
    next if e[n].nil?
    next if dp[n][c]==MAX
    e[n].each do |t|
      et=t[:t]
      ey=t[:y]+c
      next if C<ey
      em= dp[et][ey]==MAX ? t[:m] : t[:m]+dp[et][ey]
      puts "ey:#{ey} c:#{c} em:#{em}"
      dp[et][ey] = [dp[et][ey], em].min
    end
    dp.each{|foo|p foo}
  end
end


ans=[MAX, dp[N-1].min].min
puts ans==MAX ? -1 : ans


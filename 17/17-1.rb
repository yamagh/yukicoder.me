N=gets.to_i
C=gets.to_i
V=gets.to_i
S=gets.split.map(&:to_i).map{|m|m-1}
T=gets.split.map(&:to_i).map{|m|m-1}  # $B9T$-@h$ND.HV9f(B
Y=gets.split.map &:to_i               # $B%3%9%H(B
M=gets.split.map &:to_i               # $BC10L;~4V(B
MAX=999

# $BF~NO%G!<%?$r=hM}$7$d$9$$$h$&$KJQ49$7$FG[Ns(B e $B$K3JG<$9$k(B
e=[]
S.each.with_index do |v,i|
  e[v]||=[]
  e[v] << { t: T[i], y: Y[i], m: M[i] }
end

# DP $BMQ$NG[Ns$r:n@.(B
# $BE:;z(B:
#   1 $B<!85L\(B: $BD.$NHV9f(B
#   2 $B<!85L\(B: $B%3%9%H(B
# $BCM(B:
#   $B0\F0;~4V(B
dp=Array.new(N).map{Array.new(C+1,MAX)}

# $B:G=i$N%N!<%I$K$*$1$k0\F0;~4V$O(B 0 $B$H$7$F=i4|2=(B
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


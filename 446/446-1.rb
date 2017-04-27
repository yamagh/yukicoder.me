N=gets.to_i
X=(1..N).map{gets.split.map(&:to_i)}
ans=X.map{|m|0<m[1]-m[0] ? m[1]-m[0] : -1}.uniq
p (1 < ans.size || ans[0]==-1) ? -1 : ans[0]


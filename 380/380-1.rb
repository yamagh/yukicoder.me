h,w,n,k=gets.split.map(&:to_i)
a=(h*w).times.to_a
p a
puts a[n-1]%k-1==0 ? 'YES':'NO'

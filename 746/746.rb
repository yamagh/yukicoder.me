N=gets.to_i
A=gets.split.map(&:to_i).sort
if A.size.odd?
  p A[A.size/2]
else
  p (A[A.size/2 -1] + A[A.size/2]).to_f / 2
end


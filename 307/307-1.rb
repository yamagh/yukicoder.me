N,M=gets.split.map(&:to_i)
C=gets.split.map(&:to_i).sort
emp_box=0
C.inject(0) do |s,i|
  if s < M
    emp_box+=1 if i<=M-s
    s+=i
  else
    s=s
  end
end
p emp_box


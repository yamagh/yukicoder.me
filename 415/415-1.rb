l=gets.to_i
n=gets.to_i
s=gets.split
if l==3 then
  puts n
else
  puts ['A','B'].repeated_permutation(l-3).size * n
end


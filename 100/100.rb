w=gets.to_i
D=gets.to_i

D.downto(1) do |d|
  puts w if d==1
  w-=w/(d**2)
end


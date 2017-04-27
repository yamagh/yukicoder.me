N=gets.to_i
a,b,c=gets.split.map(&:to_i)
puts (N/a+N/b+N/c) - (N/(a*b)+N/(a*c)+N/(b*c)) + 2*(N/(a*b*c))


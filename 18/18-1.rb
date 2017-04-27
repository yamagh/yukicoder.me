#require 'Prime'
#N=gets.to_i
#p=Prime.prime_division(N)
#idx=p.map{|m|m[1]}
#a=idx.map{|m|m==1 ? 1 : 2}
#b=[a.count(2),a.count(1)]
#
#if b[0].zero? && b[1].nonzero?
#  puts :Alice
#elsif b[0].even? && b[1].odd?
#  puts :Bob
#else
#  puts :Alice
#end

#require 'prime'
#N=gets.to_i
#p=Prime.prime_division(N)
#idx=p.map{|m|m[1]}
#idx_b=idx.map{|m|m.to_s(2).to_i}
#xor=idx_b.inject{|m,i|m=m^i}
#puts xor==0 ? :Bob : :Alice

require 'prime'
puts Prime.prime_division(gets.to_i).map{|m|m[1]}.inject(:^)==0?'Bob':'Alice'


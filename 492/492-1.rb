require 'date'
r=(Date.parse("2015-01-01")..Date.parse("2015-12-31")).map do |md|
  y,m,d=md.to_s.split('-')
  d1,d2=d.split('')
  md if m.to_i==d1.to_i+d2.to_i
end.uniq
puts r.count-1

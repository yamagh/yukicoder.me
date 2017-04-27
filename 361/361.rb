bean = gets.split.map(&:to_i).take(2).inject(:*)
age = gets.split.map(&:to_i).inject(:+)
p bean < age ? -1 : bean-age


def fizzbuzz(i)
  return 'FizzBuzz' if i%15==0
  return 'Fizz' if i%3==0
  return 'Buzz' if i%5==0
  i
end

$<.map do |n|
  (1..(n.to_i)).map{|i|puts fizzbuzz(i)}
end


1000.times do |t|
  puts "%03d" % t
  STDOUT.flush
  break if gets.chomp=="unlocked"
end

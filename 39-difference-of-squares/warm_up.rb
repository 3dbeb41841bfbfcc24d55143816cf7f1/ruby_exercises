square_result = (1..100).to_a.map do |number|
  number ** 2
end.inject(:+)
puts square_result

sum_result = ((1..100).to_a.inject(:+)) ** 2
puts sum_result

puts "The result is: #{sum_result - square_result}"
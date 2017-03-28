secret = rand(10)
puts 'Enter your guess!'

guess = gets.to_i

unless guess.eql? secret
  puts "Too #{guess > secret ? 'high' : 'low'}!"
  guess = gets.to_i # do..while might remove this repetition?
end

puts 'Winner winner, tofu dinner!'

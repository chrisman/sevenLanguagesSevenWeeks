secret = rand(10)
puts 'Enter your guess!'

guess = gets.to_i

unless guess.eql? secret
  puts "Too #{guess > secret ? 'high' : 'low'}!"
  guess = gets.to_i
end

puts 'Winner winner, tofu dinner!'

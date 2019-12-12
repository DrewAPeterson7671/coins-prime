#!/user/bin/ruby

require ('./lib/primes.rb')


p "please enter a number"
num = gets.chomp.to_i

puts "The Easy Way"
first_prime = FindPrime.new.prime_easy(num)
puts "The Hard Way"
p second_prime = FindPrime.new.prime_less_easy(num)

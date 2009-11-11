require 'hasher'
include Hasher

string = "myvaluetohash"

puts "String: #{string}"
puts "Hashed string: #{generate_hash string}"
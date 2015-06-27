#puts "Enter a set of numbers seperated by spaces to calc STD DEV"
#a = gets.chomp.split(" ").map(&:to_i)

inputex = "5 6 11 13 19 20 25 26 28 37"
b = []
a = inputex.split(" ").map(&:to_i)
av = a.inject(:+)/a.length
a.each do |num|
  b << (num-av)**2
end
d = Math.sqrt(b.inject(:+)/a.length).round(3)
puts d

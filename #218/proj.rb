f = File.open("input.txt", "r")
f.each_line do |line|
  i = 0
  a = line.chomp
  loop do
    break if a == a.reverse
    a = a.to_i + a.reverse.to_i
    a = a.to_s
    i += 1
  end
  puts line.chomp.to_s + " took " + i.to_s + " steps: " + a.to_s
end
f.close

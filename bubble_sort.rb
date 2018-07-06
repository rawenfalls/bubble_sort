input = gets.chomp.strip.scan(/[1-9]+/)
size = input.length - 1
for e in 1..size
  for i in 0..size-e
    if input[i+1] < input[i]
      input[i], input[i + 1] = input[i + 1], input[i]
    end
  end
end
puts input.join(" ")
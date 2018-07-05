input = gets.chomp.strip.scan(/[1-9]+/)
size = input.length - 1
while
size-=1
  break if size.negative?
  for i in 0..size
    if input[i+1] < input[i]
      input[i], input[i + 1] = input[i + 1], input[i]
    end
  end
end
puts input.join(" ")
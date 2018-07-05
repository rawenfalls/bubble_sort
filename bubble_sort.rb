input = gets.chomp.strip.scan(/[1-9]+/)
size = input.length - 1
until size.negative?
  for i in 0..size-1
    if input[i+1] < input[i]
      input[i], input[i + 1] = input[i + 1], input[i]
    end
  end
  size-=1
end
puts input.join(" ")
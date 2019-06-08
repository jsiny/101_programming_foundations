def substrings(string)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1

  loop do
    break if start_substring_idx == string.size

    loop do
      break if end_substring_idx == string.size
      result << string[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end

    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  result
end

p substrings('halo')
p substrings('hello world')

require 'benchmark'

def find_dup_1(arr)
  arr.each_with_object([]) {|n, seen| seen.include?(n) ? (return n) : seen << n}
end

arr = [1, 5, 3, 1]
ary =  [18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
        38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
        14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
        78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
        89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
        41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
        55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
        85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
        40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
        7,  34, 57, 74, 45, 11, 88, 67,  5, 58]

arz = ((1..1000).to_a << 50).shuffle

# p find_dup_1(arr) == 1
# p find_dup_1(ary) == 73

def find_dup_2(arr)
  arr.sort!.each_with_index { |n, i| return n if n == arr[i + 1] }
end

# p find_dup_2(arr) == 1
# p find_dup_2(ary) == 73

n = 10_000

Benchmark.bm(9) do |x|
  x.report("Method 1:") { n.times { find_dup_1(arz) } }
  x.report("Method 2:") { n.times { find_dup_2(arz) } }
end
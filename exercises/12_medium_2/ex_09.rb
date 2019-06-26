def bubble_sort!(array)
  n = array.size

  until n <= 1
    last_swap = 0
    (1..(n - 1)).each do |i|
      next if (array[i - 1] <=> array[i]) != 1
      last_swap = i
      array[i], array[i - 1] = array[i - 1], array[i]
    end

    n = last_swap
  end
end

array1 = [5, 3]
bubble_sort!(array1)
p array1 == [3, 5]

array2 = [6, 2, 7, 1, 4]
bubble_sort!(array2)
p array2 == [1, 2, 4, 6, 7]

array3 = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array3)
p array3 == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

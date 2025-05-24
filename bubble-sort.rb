def bubble_sort(numbers)
  n = numbers.length

  loop do
    swapped = false

    (n - 1).times do |i|
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        swapped = true
      end
    end

      break unless swapped
  end

    numbers
end

print bubble_sort([4,3,78,2,0,2])
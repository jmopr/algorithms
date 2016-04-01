# numbers = [5, 47, 12, 100, 33, 21]
numbers2 = [40, 25] #, 100, 1, 5, 25, 10]

def selection_sort(numbers)
  length = numbers.length
  index = 0
  while index < length
    minimum = index
    j = index + 1
    while j < length
      if numbers[j] < numbers[minimum]
        minimum = j
      end
      j += 1
    end
    temp = numbers[index]
    numbers[index] = numbers[minimum]
    numbers[minimum] = temp
    index += 1
  end
  # numbers.each_with_index do |number, index|
    # minimum = number
    # j = index + 1
    # while j < numbers.length
    #   if numbers[j] < minimum
    #     minimum = numbers[j]
    #   end
    #   j += 1
    # end
    # temp = minimum
    # numbers[index] = numbers[minimum]
    # numbers[minimum] = temp
  # end
end

# p selection_sort(numbers)
p selection_sort(numbers2)

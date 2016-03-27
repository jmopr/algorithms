numbers = [5, 47, 12, 100, 33, 21]
numbers2 = [40, 100, 1, 5, 25, 10]

def insertion_sort(numbers)
  i = 0
  j = 1
  list_size = numbers.length
  while i < list_size
    tempi = i
    tempj = j
    while numbers[j] != nil && numbers[i] > numbers[j] && i != -1
      temp = numbers[i]
      numbers[i] = numbers[j]
      numbers[j] = temp
      i -= 1
      j -= 1
    end
    i = tempi + 1
    j = tempj + 1
  end
  p numbers
end


insertion_sort(numbers)
insertion_sort(numbers2)

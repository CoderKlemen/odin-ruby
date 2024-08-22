

def bubble_sort(unsorted_array)
  change = true
  while change do
    change = false
    for i in 0..unsorted_array.length-2
      if unsorted_array[i] > unsorted_array[i+1]
        temp = unsorted_array[i]
        unsorted_array[i] = unsorted_array[i+1]
        unsorted_array[i+1] = temp
        change = true
      end
    end
  end
  return unsorted_array
end

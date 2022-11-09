def bubble_sort(input)
  made_change = false
  input.each_with_index do |value, index|
    if !(input[index + 1].nil?) && input[index + 1] < value
      input.insert(index, input.delete_at(index + 1))
      made_change = true
    end
  end
  if made_change
    bubble_sort(input)
  else
    puts input.to_s
  end
end

input_array = [4,3,78,2,0,2,10,34,12]

bubble_sort(input_array)
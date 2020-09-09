# [30], 40, 1000 | [40]
# [40]|[40]
# [50], 40, 1000       |[50] # returning the same frequency
# [1001], 40, 1000 |[1000] 

def music_filter(frequencies, low_value, high_value)
  new_filter = []
  frequencies.each do |freq|
    if freq < low_value
      new_filter << freq = low_value
    elsif freq > high_value
      new_filter << freq = high_value
    else
      return frequencies
    end
  end
  return new_filter
end

music_filter([30], 40, 1000)




# access the array
  # compare (if) the value of the array is =< than the lower value
  # then we need to frequencies == lower value
  # new array to store the new frequencies

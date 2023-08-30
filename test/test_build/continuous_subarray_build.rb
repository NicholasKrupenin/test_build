#th-x Kadane
def sub_array(arg)
  start_index = 0
  end_index = 0
  temp_start_index = 0
  sum_so_far = 0
  max_sum = -Float::INFINITY

  arg.each_index do |index|
    sum_so_far += arg[index]

    if sum_so_far.negative?
      sum_so_far = 0
      temp_start_index = index + 1
    end

    if sum_so_far > max_sum
      max_sum = sum_so_far
      start_index = temp_start_index
      end_index = index
    end
  end
  arg[start_index..end_index]
end

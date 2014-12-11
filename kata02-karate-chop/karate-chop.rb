def chop_with_iteration(int_to_find, array_of_ints)
  found_index =-1
  array_of_ints.each_with_index do |val, index|
    if val == int_to_find
      found_index = index
    end
  end
  found_index
end

NOT_FOUND= -1

def chop_with_recursion(int_to_find, array_of_ints)

  case array_of_ints.length
    when 0;
      return NOT_FOUND
    when 1;
      return (int_to_find == array_of_ints[0]) ? 0 : NOT_FOUND
  end

  middle = array_of_ints.length / 2

  if int_to_find == array_of_ints[middle]
    middle
  elsif int_to_find < array_of_ints[middle]
    chop_with_recursion(int_to_find, array_of_ints[0..middle-1])
  else
    start = middle + 1
    result = chop_with_recursion(int_to_find, array_of_ints[start..-1])

    result == NOT_FOUND ? NOT_FOUND : start + result
  end
end
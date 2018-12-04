def my_collect(array)
  if block_given?
    new_array = []
    i = 0 
    while i < array.length
       yield array[i]
       new_array << array[i]
       i += 1 
    end
    new_array
  else
    return "This block should not run!"
  end
end



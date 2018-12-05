def my_collect(array)
  if block_given?
    new_array = []
    i = 0 
    while i < array.length
      if array[i] == array[i].upcase
       yield array[i]
       new_array << array[i].downcase
     end
       i += 1 
    end
    new_array
  else
    return "This block should not run!"
  end
end





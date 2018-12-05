def my_collect(array)
  if block_given?
    new_array = []
    i = 0 
    while i < array.length
      if array[i] == array[i].upcase
       new_array << yield array[i]
       new_array << array[i].lowercase
     end
       i += 1 
    end
    new_array
  else
    return "This block should not run!"
  end
end



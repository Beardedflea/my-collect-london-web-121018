def my_collect(array)
  if block_given?
    new_array = []
    i = 0 
    while i < array.length
    yield array[i]
    
    if array[i].upcase
      new_array << array[i].split(" ").first
    
    elsif array[i].downcase
      new_array << array[i].upcase
    end
    i += 1 
    end
    new_array
  else
    return "This block should not run!"
  end
end





def sum_of_cubes(a, b)
  i=a
  temp = 0
  while i<b+1 do 
    temp = temp + i*i*i
    i = i+ 1
  end
    return temp
end

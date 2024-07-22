a = [121,124124,124124]
a.each_with_index{|e,i| puts "Element: #{e}, Index: #{i}"}

def sum_2_numbers(num1,num2)
  return num1+num2
end

puts sum_2_numbers(1,2)
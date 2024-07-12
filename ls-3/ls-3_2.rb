require 'set'
#Метод получения данных из файла
def read_file_data()
  arr = []
  set_age=Set[]
  file = File.open("test_text_3_2.txt","r")
  file_data = file.readlines
  file_data.each {|file_string| 
  temp = file_string.split()
  arr << temp  

  
} 
  file.close()

  arr.each do |person|
      set_age << person[2]
  end
  
  #puts set_age

  return  arr,set_age
end

#Находим по возрасту записи
def find_per_age(age,data)
  arr = data[0]
  set_age = data[1]
  arr_per_age = []
  #puts set_age.include?(age.to_s)
  arr.each do |person|
    if person[2] == age.to_s && set_age.include?(age.to_s)
      arr_per_age << person
    end
  end
  set_age.delete(age.to_s) #Чтобы повторно не записывать данные из файла
 # puts set_age
 # arr.each do |person|
 #   puts person.join(" ")
 # end
  arr_per_age.each do |man|
    man.each do |man_info|
      File.write("result.txt",man_info+" ",mode: "a")
    end
    File.write("result.txt","\n",mode: "a")
  end
 # puts " "
  #puts arr_per_age
 # puts " "
  
  return set_age.empty?
end


#Главный метод
def entire_age()
  File.open("result.txt","w")
  data = read_file_data()
  loop do
  puts "Input Age"
  age = gets.chomp.to_i
  flag = find_per_age(age,data)
  break if age == -1 or flag
end
  file = File.open("result.txt","r")
  file_data = file.readlines
  puts file_data
end
#Для вызова
entire_age()
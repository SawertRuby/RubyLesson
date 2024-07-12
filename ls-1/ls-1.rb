def foobar(n1 , n2)
  if n1 == 20 || n2 == 20
    puts n2
    return n2
  else 
    puts n1+n2
    return n1 + n2  
  end
end



def greeting(name,surname,age)
	if age.to_i >=18
      puts   "Привет, #{name} #{surname}. Самое время заняться делом!"
      return "Привет, #{name} #{surname}. Самое время заняться делом!"
  else 
    puts "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
    return "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  end
end


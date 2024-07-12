class CashMachine
  def initialize(current_balance)
    @current_balance = current_balance
  end
  def balance()
    puts @current_balance
  end
  #Записываем баланс сразу чтобы не было потерь данных при ошибках или закрывании программы
  def deposit(amount)
    @current_balance += amount.to_i
  end
  #Записываем баланс сразу чтобы не было потерь данных при ошибках или закрывании программы
  def withdraw(amount)
    if amount.to_i <= @current_balance
      @current_balance -= amount.to_i
    else 
      return 0
  
    end

  end
  

end

def list_of_operations()
  puts "D - depotit your money"
  puts "B - check your balance "
  puts "W - witdraw"
  puts "Q - quit at this programm"
  #puts "H - help"
end


def operations(user)
  loop do
  puts "Input type of operation: "
  operation = gets.chomp
  operation = operation.upcase
  case operation
    when "B"
      user.balance()
    when "D"
      puts "Input amount of money"
      amount = gets.chomp
      if amount.to_i < 0
        puts "Exeption!"
        puts "There should be more than 0 money"
      elsif amount.to_i == 0 
        puts "Its not a nubmer try input again"
      else
        user.deposit(amount)
      end
    when "W"
      puts "Input amount of money"
      amount = gets.chomp
      if amount.to_i < 0
        puts "Exeption!"
        puts "There should be more than 0 money"
      elsif amount.to_i == 0 
        puts "Its not a nubmer try input again"
      elsif
        flag = user.withdraw(amount)
        
        if flag == 0
          puts "Уouq want to withdraw more money than you have"
          puts "You have #{user.balance()} money"
        
        end
          
      end
    when "Q"
      break
    
    else
      puts "Try something again input of operation..."
      list_of_operations()

  end
  break if operation == "Q"
end 
end


#Создаем пользователя
user = CashMachine.new(100).balance()

#operations(user)


def balance
  file = File.open("balance.txt","r")
  file_data = file.read
  puts file_data
  file.close()
end
#Записываем баланс сразу чтобы не было потерь данных при ошибках или закрывании программы
def deposit(amount)
  namefile = "balance.txt"
  file = File.open(namefile,"r")
  file_data = file.read.to_i
  file.close()
  file_data += amount.to_i
  #File.open(namefile,"w")
  #puts file_data
  File.write(namefile, file_data)
end
#Записываем баланс сразу чтобы не было потерь данных при ошибках или закрывании программы
def withdraw(amount)
  namefile = "balance.txt"
  file = File.open(namefile,"r")
  file_data = file.read.to_i
  file.close()
  if amount.to_i <= file_data
    file_data -= amount.to_i
    File.write(namefile, file_data)
  
  else 
    return 0

  end
  #File.open(namefile,"w")
  #puts file_data
end

def quit

end

def list_of_operations()
  puts "D - depotit your money"
  puts "B - check your balance "
  puts "W - witdraw"
  puts "Q - quit at this programm"
  #puts "H - help"
end
  
  def operations()
    loop do
    puts "Input type of operation: "
    operation = gets.chomp
    operation = operation.upcase
    case operation
      when "B"
        balance()
      when "D"
        puts "Input amount of money"
        amount = gets.chomp
        if amount.to_i < 0
          puts "Exeption!"
          puts "There should be more than 0 money"
        elsif amount.to_i == 0 
          puts "Its not a nubmer try input again"
        else
          deposit(amount)
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
          flag = withdraw(amount)
          
          if flag == 0
            puts "Уouq want to withdraw more money than you have"
            puts "You have #{balance()} money"
          
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

def start()
  namefile = "balance.txt"
if !File.exist?(namefile)
  File.open(namefile,"w")
  File.write(namefile, "100")
  
end
operations()

end

start()
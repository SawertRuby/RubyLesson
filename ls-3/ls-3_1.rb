


def index()
    file = File.open("test.txt","r")
    q = file.read
    puts q
    file.close()
    puts " "
    return q
end

def find(id)
    file = File.open("test.txt","r")
    file_data = file.readlines
    fd = file_data[id]
    puts fd
    file.close()
    puts " "
    return fd
end

def where(pattern)
    file = File.open("test.txt","r")
    file_data = file.readlines
    puts " "
    puts "Find strings"
    puts file_data.grep(/#{pattern}/)
    puts " "


    file.close()
end

def update(id,text)
    file_read  = File.open("test.txt","r")
    file_read_data = file_read.readlines

    file_read.close()

    file_read_data[id] = text
    File.open("test.txt","w") do |f|
        file_read_data.each {|line| f.puts(line)}
    end
end

def delete(id)
    file_read  = File.open("test.txt","r")
    file_read_data = file_read.readlines
    file_read.close()
    #puts "This string #{id}) #{file_read_data[id]} has been deleted"
    #puts " "
    file_read_data.delete_at(id)
    #puts file_read_data
    #puts " "
    File.open("test.txt","w") do |f|
        file_read_data.each {|line| f.puts(line)}

   end


end

def create(name)
    file_data = File.write("test.txt",name+"\n",mode: "a")
end

#index()
#find(3)
#index()
#delete(4)
#index()
#create('ngyp')
#index()
#update(4,"123123123123")
#index()
#where("q")
#index()
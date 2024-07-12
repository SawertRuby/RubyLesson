def word(word1)
    if word1[word1.length-2,word1.length].upcase  == "CS"
        puts 2**word1.length
        return 2**word1.length
    else
        puts word1.reverse()
        return word1.reverse()
    end
end
#puts word("RubyCS")
#Poke
def addPokemons(count_of_poke,poke_arr)
    for _ in 0..count_of_poke-1 do
    puts "Input name of Poke and colour"
    poke_info = [gets.chomp,gets.chomp]
    
    poke_arr.push({name: poke_info[0],color: poke_info[1] })
    
    end
    return poke_arr
end
def pocemons(poke_arr)
    puts "Input count of Poke, what you want to add"
    count_of_poke = gets.chomp
    addPokemons(count_of_poke.to_i,poke_arr)
    puts poke_arr
    return poke_arr
end
pocemons([{name: 'pic',color: 'red'}])
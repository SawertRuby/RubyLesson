require 'rspec'
require_relative 'ls-2.rb' 

RSpec.describe "word" do

    it "returns 2 to the power of word length if the word ends with 'cs'" do
        expect(word("RubyCS")).to eq(64)
    end
    
    it "returns the reverse of the word if it does not end with 'cs'" do
        expect(word("Hello")).to eq("olleH") 
    end

    it "pocemons" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('Pikachu', 'Yellow')
        expect(addPokemons(1,[])).to eq([{name: "Pikachu", color: "Yellow"}])
    end

end
require 'rspec'
require_relative 'ls-3_1.rb' 

RSpec.describe "ls-3_1.rb" do

    it "Writing file data" do
      file = File.open("test.txt","r")
      expect(index()).to eq(file.read)
      file.close()
    end
    
    it "Return string by id" do
      file = File.open("test.txt","r")
    file_data = file.readlines
    expect(find(3)).to eq(file_data[3])
    file.close()
    end

    

end
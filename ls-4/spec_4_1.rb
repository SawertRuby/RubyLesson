require 'rspec'
require_relative 'ls-4_1.rb' 

RSpec.describe "ls-3_1.rb" do
      
  describe CashMachine do
    describe '#balance' do
      it 'prints Balance things' do
        expect do
          CashMachine.new(100).balance()
        end.to output("100\n").to_stdout
      end
  
      it 'Deposit balance balance + amount deposit amount' do
        expect do
          user = CashMachine.new(100).deposit(120)
          expect(user.balance()).to eq(220)
        end
      end
      it 'Withdraw balance balance - amount deposit' do
        expect do
          user = CashMachine.new(100).withdraw(20)
          expect(user.balance()).to eq(80)
        end
      end
    end
  end
end


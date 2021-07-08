require 'pry'

class BankAccount

    attr_accessor :name
    attr_reader :acct_number
    
    def initialize(name, acct_number, amount)
        @name = name
        @acct_number = acct_number
        @amount = amount
    end

    def amount
        "$" + self.add_decimal(@amount.to_s)
    end

    def withdraw(withdraw_amount)
        if withdraw_amount < 10000
            @amount -= withdraw_amount
        end
    end

    def deposit(deposit_amount)
        @amount += deposit_amount
    end

    def add_decimal(s)
        pfx = [ '0.00', '0.0', '0.' ]
        if(pfx[s.length])
          s = pfx[s.length] + s
        else
          s = s.dup
          s[-2, 0] = '.'
        end
        s
    end

end

bank_account = BankAccount.new("Marvin", 47982734, 10000)

binding.pry
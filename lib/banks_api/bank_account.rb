module BanksApi
  class BankAccount
    attr_reader :id, :description, :currency, :balance

    def initialize(id:, description:, currency:, balance:)
      @id = id
      @description = description
      @currency = currency
      @balance = balance
    end
  end
end

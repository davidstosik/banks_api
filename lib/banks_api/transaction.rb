module BanksApi
  class Transaction
    attr_reader :date, :description, :amount, :currency

    def initialize(date:, description:, amount:, currency:)
      @date = date
      @description = description
      @amount = amount
      @currency = currency
    end
  end
end

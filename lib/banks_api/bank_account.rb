require "money"
require "banks_api/inspectable_builder"

module BanksApi
  class BankAccount
    include InspectableBuilder.new(%i(id description balance))

    attr_reader :id, :description, :currency, :balance

    def initialize(id:, description:, currency:, balance:)
      @id = id
      @description = description
      @currency = Money::Currency.find(currency)
      @balance = Money.from_amount(balance, @currency)
    end
  end
end

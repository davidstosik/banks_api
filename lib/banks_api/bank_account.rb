require "banks_api/inspectable_builder"

module BanksApi
  class BankAccount
    include InspectableBuilder.new(%i(id description currency balance))

    attr_reader :id, :description, :currency, :balance

    def initialize(id:, description:, currency:, balance:)
      @id = id
      @description = description
      @currency = currency
      @balance = balance
    end
  end
end

require "banks_api/inspectable_builder"

module BanksApi
  class Transaction
    include InspectableBuilder.new(%i(date description amount currency))

    attr_reader :date, :description, :amount, :currency

    def initialize(date:, description:, amount:, currency:)
      @date = date
      @description = description
      @amount = amount
      @currency = currency
    end
  end
end

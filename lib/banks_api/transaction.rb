require "banks_api/inspectable_builder"

module BanksApi
  class Transaction
    include InspectableBuilder.new(%i(date description amount))

    attr_reader :date, :description, :amount

    def initialize(date:, description:, amount:, currency:)
      @date = date
      @description = description
      @amount = Money.from_amount(amount, currency)
    end
  end
end

require "single_forwardable"
require "singleton"
require "monitor"

module BanksApi
  class Bank
    include Singleton
    extend SingleForwardable

    def_single_delegators :instance, :register_bank, :get_bank_api

    def initialize
      @registry = {}
      @mutex = Monitor.new
    end

    def register_bank(bank_name, api_class)
      with_mutex do
        registry[bank_name.to_s] = api_class
      end
    end

    def get_bank_api(bank_name)
      with_mutex do
        registry.fetch(bank_name.to_s)
      end
    end

    private

      attr_reader :registry, :mutex

      def with_mutex
        mutex.synchronize { yield }
      end
  end
end

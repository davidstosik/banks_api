module BanksApi
  class UserAccount
    def initialize(bank_name, credentials)
      @bank_name = bank_name
      @credentials = credentials
    end

    def accounts
      @accounts ||= api.fetch_accounts
    end

    def account(id)
      accounts.find do |account|
        account.id == id
      end
    end

    private

      attr_reader :bank_name, :credentials

      def api
        @_api ||= api_class.new(credentials)
      end

      def api_class
        Bank.get_bank_api(bank_name)
      end
  end
end

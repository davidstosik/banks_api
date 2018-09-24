# Banks API

## Project

### Classes

#### `Bank` (unnecessary?)

Specific bank classes (eg. `ShinseiBank`) inherit from this. (Maybe using
duck-typing is enough?)

#### `UserAccount`

This represents a user account in a specific bank, with its credentials.

```rb
attr_accessor :bank           # Class? Symbol?
attr_accessor :credentials    # Hash? CredentialSet?
has_many :bank_accounts, class_name: "BankAccount"
```

#### `BankAccount`

A bank account that has a balance and a list of transactions.
(There may be multiple bank accounts in a unique user account.)

```rb
attr_accessor :name           # String
attr_accessor :balance        # Money?
has_many :transactions, class_name: "Transaction"
```

#### `Transaction`

A credit or a debit transaction, with an amount, a date and a description.
(How about a payee, only on the YNAB side?)

```rb
attr_accessor :type           # Symbol? (:credit, :debit)
attr_accessor :amount         # Money?
attr_accessor :description    # String
attr_accessor :date           # Date
```

### gems

#### Base gem (`banks_api`)

Provides:

- coding guidelines
- public API
- basic `Bank` class?

#### Command-line gem (`banks_api-cli`)

Provides:

- command-line tool (with Thor?)

#### Specific bank gem (eg. `banks_api-shinsei`)

Implements:

- user credential format (`Hash` or custom class?)
- list accounts
- getting balance per account
- getting transactions per account
- transfering money?

#### Sync gem (`banks_api-ynab`)

Takes a `BankAccount` and syncs its transactions with a specific account in
a budget.
## gem README

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/banks_api`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'banks_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install banks_api

### Usage

TODO: Write usage instructions here

### Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/banks_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

### License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

### Code of Conduct

Everyone interacting in the BanksApi project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/banks_api/blob/master/CODE_OF_CONDUCT.md).

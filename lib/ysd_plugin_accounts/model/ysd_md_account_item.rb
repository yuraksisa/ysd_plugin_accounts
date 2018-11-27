require 'data_mapper' unless defined?DataMapper::Resource

module Yito
  module Model
    module Accounts
      class AccountItem
        include DataMapper::Resource

        storage_names[:default] = 'accountds_account_items'

        property :id, Serial
        belongs_to :account, 'Account' 

        property :date, DateTime
        property :concept, String, length: 256

        property :debit, Decimal, precision: 10, scale: 2
        property :credit, Decimal, precision: 10, scale: 2
        property :balance, Decimal, precision: 10, scale: 2  

      end
    end
  end
end
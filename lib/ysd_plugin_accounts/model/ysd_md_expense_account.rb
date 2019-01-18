require 'data_mapper' unless defined?DataMapper::Resource

module Yito
  module Model
    module Accounts
      class ExpenseAccount
        include DataMapper::Resource

        storage_names[:default] = 'accountds_expense_accounts'

        property :id, Serial
        property :name, String
        property :description, Text

        has n, :expense_account_items, 'ExpenseAccountItem', :constraint => :destroy

      end
    end
  end
end
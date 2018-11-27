require 'data_mapper' unless defined?DataMapper::Resource

module Yito
  module Model
    module Accounts
      class Account
        include DataMapper::Resource

        storage_names[:default] = 'accountds_accounts'

        property :id, Serial
        property :reference, String, length: 100, :unique_index => :accountds_accounts_reference_idx
        property :description, Text

        has n, :account_items, 'AccountItem', :constraint => :destroy

      end
    end
  end
end
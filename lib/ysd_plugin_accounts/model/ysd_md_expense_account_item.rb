require 'data_mapper' unless defined?DataMapper::Resource

module Yito
  module Model
    module Accounts
      class ExpenseAccountItem
        include DataMapper::Resource

        storage_names[:default] = 'accountds_expense_account_items'

        property :id, Serial
        property :date, DateTime
        belongs_to :concept, 'Yito::Model::Classifier::ClassifierTerm', :child_key => [:classifier_term_id], :parent_key => [:id], :required => false
        property :description, Text
        belongs_to :expense_account, 'ExpenseAccount' 

        include Yito::Concern::Invoices::Totals

      end
    end
  end
end
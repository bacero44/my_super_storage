# frozen_string_literal: true

module Mutations
  class CreateCustomer < BaseMutation
    
    argument :name, String, required: true
    argument :identification, String, required: true

    field :customer, Types::CustomerType, null: false
    field :errors, [String], null: false
    def resolve(name:, identification:)
      customer = Customer.new(name: name, identification: identification)
      
      if customer.save
        { customer: customer, errors: [] }
      else
        { customer: nil, errors: customer.errors.full_messages }
      end
    end
  end
end


# mutation {
#   createCustomer( input: { name: "Pepito Santos", identification: "106927128898"}) {
#     customer {
#       id
#       name
#       identification
#     }
#     errors
#   }
# }
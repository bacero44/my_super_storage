module Queries
  class CustomersQuery < GraphQL::Schema::Resolver
    type [Types::CustomerType], null: false
    def resolve
      Customer.all
    end
  end
end
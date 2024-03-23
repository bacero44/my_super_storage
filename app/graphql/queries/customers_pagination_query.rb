module Queries
  class CustomersPaginationQuery < GraphQL::Schema::Resolver
    type Types::CustomerType.connection_type, null: false
    def resolve
      Customer.all
    end
  end
end

 
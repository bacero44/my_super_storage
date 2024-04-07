module Queries
  class CustomersPaginationQuery < GraphQL::Schema::Resolver
    type Types::CustomerType.connection_type, null: false
    
    def resolve
      ::Customer.all
    end
  end
end

# query {
#   customersPagination(first:2, after:"Mg") {
#     pageInfo{
#       endCursor
#       startCursor
#       hasPreviousPage
#       hasNextPage
#     }
#     edges{
#       cursor
#       node{
        
#         id
#         name
#       }
#     }
#   }
# }


 
class Mutations::CreateAuthor < GraphQL::Schema::Mutation

  null true

  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :dob, GraphQL::Types::ISO8601Date, required: false
  argument :is_alive, Boolean, required: false

  def resolve(first_name:, last_name:, dob:, is_alive:)
    Author.create(
      first_name: first_name,
      last_name: last_name,
      dob: dob,
      is_alive: is_alive
    )
  end
end
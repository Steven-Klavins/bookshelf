class Types::AuthorType < Types::BaseObject

  description "A single author."

  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :dob, GraphQL::Types::ISO8601Date, null: true
  field :is_alive, Boolean, null: true
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :full_name, String, null: false
  field :errors, [Types::ErrorType], null: true

  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  def errors
    object.errors.map { |e| { field_name: e.attribute, error: object.errors[e.attribute] } }
  end
end

class Types::AuthorInputType < GraphQL::Schema::InputObject
  graphql_name "AuthorInputType"
  description "The attributes required to create/update an author."

  argument :id, ID, required: false
  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :dob, GraphQL::Types::ISO8601Date, required: false
  argument :is_alive, Boolean, required: false
end
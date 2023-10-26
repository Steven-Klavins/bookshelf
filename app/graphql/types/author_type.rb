class Types::AuthorType < Types::BaseObject

  description "A single author."

  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :dob, GraphQL::Types::ISO8601Date, null: true
  field :is_alive, Boolean, null: true
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :full_name, String, null: false

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
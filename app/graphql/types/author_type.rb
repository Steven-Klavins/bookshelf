class Types::AuthorType < Types::BaseObject

  description "A single author."

  field :id, ID, null: false
  field :first_name, String, null: true
  field :last_name, String, null: true
  field :dob, Int, null: false
  field :is_alive, Boolean, null: true
end
class Types::UserType < Types::BaseObject

  description "A single user."

  field :id, ID, null: true
  field :email, String, null: true
  field :admin, Boolean, null: true

  # GraphQL built in visibility check
  # If the context condition is not met this model wont be visible in the API

  def self.visible(context)
    !!context[:current_user]
  end
end


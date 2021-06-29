class ActorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :known_for, :gender, :age

  belongs_to :movie
end

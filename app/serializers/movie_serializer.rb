class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :english, :genres
end

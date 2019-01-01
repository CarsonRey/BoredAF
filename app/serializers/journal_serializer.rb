class JournalSerializer < ActiveModel::Serializer
  attributes :id, :user, :date, :participants, :learned, :favorite_part, :least_favorite, :would_do_again
end

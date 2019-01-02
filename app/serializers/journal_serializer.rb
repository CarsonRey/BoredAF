class JournalSerializer < ActiveModel::Serializer
  attributes :id, :user, :activity_id, :date, :participants, :learned, :favorite_part, :least_favorite, :would_do_again
end

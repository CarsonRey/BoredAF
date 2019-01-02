class UserActivitySerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :activity
  attributes :id, :tried, :activity, :journaled
end

class UserActivitySerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :activity
  attributes :id
end

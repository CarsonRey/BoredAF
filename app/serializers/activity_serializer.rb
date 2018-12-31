class ActivitySerializer < ActiveModel::Serializer
  has_many :users
  attributes :id, :activity, :category
end

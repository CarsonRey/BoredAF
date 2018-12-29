class UserSerializer < ActiveModel::Serializer
  attributes :username, :activities
  has_many :activities
end

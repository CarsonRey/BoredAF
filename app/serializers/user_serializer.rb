class UserSerializer < ActiveModel::Serializer
    has_many :activities
    attributes :id, :username, :activities, :user_activities
end

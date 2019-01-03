class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :activities, :user_activities, :journals
end

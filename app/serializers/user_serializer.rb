class UserSerializer < ActiveModel::Serializer
    # has_many :activities
    # has_many
    attributes :id, :username, :activities, :user_activities, :journals
end

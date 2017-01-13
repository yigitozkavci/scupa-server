class UserSerializer < ActiveModel::Serializers
  attribute :id, :name, :email
end

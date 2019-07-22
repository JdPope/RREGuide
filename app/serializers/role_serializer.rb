class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :percentage
  has_one :job
end

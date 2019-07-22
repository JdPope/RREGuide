class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_started, :date_completed
  has_one :expectation
end

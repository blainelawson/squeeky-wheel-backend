class IssueSerializer < ActiveModel::Serializer
  attributes :id, :date, :name, :desc
end

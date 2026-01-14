class TodoItem < ApplicationRecord
  belongs_to :todo_list

  validates :content, presence: true

  enum priority: { low: 0, medium: 1, high: 2 }

  default_scope { order(created_at: :desc) }
end

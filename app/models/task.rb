class Task < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true, length:{maximum:140}
  enum status: {draft: 0, published: 1}

  belongs_to :user
end

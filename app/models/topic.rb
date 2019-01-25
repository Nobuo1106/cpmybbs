class Topic < ApplicationRecord
  # 少し略して書ける
  has_many :posts, dependent: :destroy
  validates :title, presence: true
end

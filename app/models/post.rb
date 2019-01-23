class Post < ApplicationRecord
  belongs_to :topic
  validates :name, :body, presence: true
  # バリデーションできていなかった
  validates :body, presence: true
end

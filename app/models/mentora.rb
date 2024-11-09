class Mentora < ApplicationRecord
  validates :nome, presence: true
  validates :email, presence: true, length: { minimum: 3 }
  validates :habilidades, presence: true
end

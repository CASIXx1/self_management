class Custom < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :user
  has_many :checks, dependent: :destroy
  has_many :dairies, through: :checks
  has_many :rules, dependent: :destroy

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :title, uniqueness: true, presence: true
  validates :description, presence: true
end

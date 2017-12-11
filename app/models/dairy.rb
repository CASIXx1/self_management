class Dairy < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :user
  has_many :checks, dependent: :destroy
  has_many :customs, through: :checks

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :date, uniqueness: true, presence: true
end

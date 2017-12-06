class Dairy < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :user
  has_many :customs, through: :checks
end

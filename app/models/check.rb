class Check < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :dairy
  belongs_to :custom
end
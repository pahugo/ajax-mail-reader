class Email < ApplicationRecord
  validates :object, presence: true
end

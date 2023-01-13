class Inquiry < ApplicationRecord
  belongs_to :post

  validates :inquirer_name, presence: true
end

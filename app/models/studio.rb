class Studio < ApplicationRecord
  belongs_to :admin

  with_options presence: true do
    validates :name
    validates :price, numericality: { only_integer: true, message: 'Half-width number' },
                                      inclusion: { in: 500..9_999_999 }
  end
end

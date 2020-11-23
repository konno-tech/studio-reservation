class Studio < ApplicationRecord
  belongs_to :admin

  with_options presence: true do
    validates :name
    validates :price, numericality: { only_integer: true, message: 'は半角数字で入力してください' },
                                      inclusion: { in: 500..9_999_999 }
  end

  has_many :reserves
end

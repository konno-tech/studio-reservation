class Reserve < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  has_one    :reservation
  accepts_nested_attributes_for :reservation

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :time_list
  belongs_to active_hash :payment_method

end

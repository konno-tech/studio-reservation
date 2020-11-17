class StudioReserve
  include ActiveModel::Model
  include ActiveRecord::AttributeAssignment
  attr_accessor :date, :time_from_id, :time_to_id, :number_of_users_id, :note, :payment_method_id, :user_id, :studio_id #, :token

  # 空の投稿を保存できないようにする
  with_options presence: true do
    validates :date
    validates :time_from_id,       numericality: { other_than: 0, message: 'は「--」以外を選択してください' }
    validates :time_to_id,         numericality: { other_than: 0, message: 'は「--」以外を選択してください' }
    validates :number_of_users_id, numericality: { other_than: 0, message: 'は「--」以外を選択してください' }
    validates :note
    validates :payment_method_id,  numericality: { other_than: 0, message: 'は「--」以外を選択してください' }
    # validates :token
  end

  def save
    @reserve = Reserve.create(user_id: user_id, studio_id: studio_id)
    Reservation.create(date: date, time_from_id: time_from_id, time_to_id: time_to_id, number_of_users_id: number_of_users_id,
                       note: note, payment_method_id: payment_method_id, user_id: @reserve.user_id, reserve_id: @reserve.id)
  end
end
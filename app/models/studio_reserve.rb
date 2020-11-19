class StudioReserve
  include ActiveModel::Model
  include ActiveRecord::AttributeAssignment
  attr_accessor :date, :time_from_id, :time_to_id, :number_of_users_id, :note, :payment_method_id, :user_id, :studio_id, :token

  # 空の投稿を保存できないようにする
  with_options presence: true do
    validates :date
    validates :time_from_id,       numericality: { other_than: 0, message: 'は「--」以外を選択してください' }
    validates :time_to_id,         numericality: { other_than: 0, message: 'は「--」以外を選択してください' }
    validates :number_of_users_id, numericality: { other_than: 0, message: 'は「--」以外を選択してください' }
    validates :payment_method_id,  numericality: { other_than: 0, message: 'は「--」以外を選択してください' }
    # 支払い方法が「クレジット決済（事前）」の場合のみバリデーションを設定する
    validates :token, if: :pay_method?
  end

  def pay_method?
    payment_method_id == "3"
  end

  def save
    # 予約したい日付のデータをreservationテーブルから全て取得する
    @reservations = Reservation.where(date: "#{date[1]}-#{date[2]}-#{date[3]}")
    # 取得したデータの数を変数'len'に代入
    len = @reservations.length

    # 'len'の数だけ繰り返しを行う。'i'には回数が入る
    len.times do |i|
      # 1つ目の配列（配列[0]）に紐づくスタジオIDが予約したいスタジオのIDと合致した場合
      if @reservations[i - 1].reserve.studio_id.to_s == studio_id
        # 予約済みのレコードの開始・終了時間の値の範囲を'range'に代入
        range = @reservations[i - 1].time_from_id..@reservations[i - 1].time_to_id
        # 'range'の数だけ繰り返し処理を行う。'r'には'range'の小さい数から順に入る
        range.each do |r|
          # 予約したい開始or終了時間が既に存在('r')している場合
          if time_from_id.to_i == r || (time_to_id.to_i - 1) == r
            # 予約済みのため'false'。新規予約画面へ戻す。
            return false
          end
        end
      end
    end


    @reserve = Reserve.create(user_id: user_id, studio_id: studio_id)
    Reservation.create(date: date, time_from_id: time_from_id, time_to_id: (time_to_id.to_i - 1).to_s, number_of_users_id: number_of_users_id,
                       note: note, payment_method_id: payment_method_id, user_id: @reserve.user_id, reserve_id: @reserve.id)
  end
end
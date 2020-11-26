require 'rails_helper'

RSpec.describe StudioReserve, type: :model do
  describe '#create' do
    before do
      @studio_reserve = FactoryBot.build(:studio_reserve)
    end

    it '全て入力されていれば登録できること' do
      expect(@studio_reserve).to be_valid
    end

    it '予約日の選択が必要であること' do
      @studio_reserve.date = nil
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("予約日を入力してください")
    end

    it '開始時間の選択が必要であること' do
      @studio_reserve.time_from_id = nil
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("開始時間を入力してください")
    end

    it '開始時間に「--」(0)を選択すると登録できないこと' do
      @studio_reserve.time_from_id = 0
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("開始時間は「--」以外を選択してください")
    end

    it '終了時間の選択が必要があること' do
      @studio_reserve.time_to_id = nil
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("終了時間を入力してください")
    end

    it '終了時間に「--」(0)を選択すると登録できないこと' do
      @studio_reserve.time_to_id = 0
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("終了時間は「--」以外を選択してください")
    end

    it '利用者数の選択が必要であること' do
      @studio_reserve.number_of_users_id = nil
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("利用者数を入力してください")
    end

    it '利用者数に「--」(0)を選択すると登録できないこと' do
      @studio_reserve.number_of_users_id = 0
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("利用者数は「--」以外を選択してください")
    end

    it '支払い方法の選択が必要であること' do
      @studio_reserve.payment_method_id = nil
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("支払い方法を入力してください")
    end

    it '支払い方法に「--」(0)を選択すると登録できないこと' do
      @studio_reserve.payment_method_id = 0
      @studio_reserve.valid?
      expect(@studio_reserve.errors.full_messages).to include("支払い方法は「--」以外を選択してください")
    end

    it '支払い方法に「クレジット決済（事前）」(3)以外を選択した場合、トークンは必要ではないこと' do
      @studio_reserve.payment_method_id = 1
      @studio_reserve.token = nil
      @studio_reserve.valid?
      expect(@studio_reserve).to be_valid
    end

  end
end

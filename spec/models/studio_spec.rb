require 'rails_helper'

RSpec.describe Studio, type: :model do
  let(:studio) { FactoryBot.create(:studio) }
  describe '#create' do
    before do
      @studio = FactoryBot.build(:studio)
    end

    it '全て入力されていれば登録できること' do
      expect(@studio).to be_valid
    end

    it 'お名前（全角）の苗字（last_name）が空では登録されないこと' do
      @studio.name = nil
      @studio.valid?
      expect(@studio.errors.full_messages).to include("スタジオ名を入力してください")
    end

    it '価格を入力しなければ登録できないこと' do
      @studio.price = nil
      @studio.valid?
      expect(@studio.errors.full_messages).to include("価格を入力してください")
    end

    it '価格が、¥500未満の場合登録できないこと' do
      @studio.price = 499
      @studio.valid?
      expect(@studio.errors.full_messages).to include('価格は一覧にありません')
    end

    it '価格が、¥9,999,999超の場合登録できないこと' do
      @studio.price = 10_000_000
      @studio.valid?
      expect(@studio.errors.full_messages).to include('価格は一覧にありません')
    end

    it '価格は半角数字以外では登録できないこと' do
      @studio.price = '１０００'
      @studio.valid?
      expect(@studio.errors.full_messages).to include('価格は半角数字で入力してください')
    end

  end
end

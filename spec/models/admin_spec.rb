require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe '#create' do
    before do
      @admin = FactoryBot.build(:admin)
    end

    it '全て入力されていれば登録できること' do
      expect(@admin).to be_valid
    end

    it 'お名前（全角）の苗字（last_name）が空では登録されないこと' do
      @admin.last_name = nil
      @admin.valid?
      expect(@admin.errors.full_messages).to include("苗字を入力してください")
    end

    it 'お名前（全角）の苗字（last_name）が漢字またはひらがなまたはカタカナ以外では登録されないこと' do
      @admin.last_name = 'mr.brown'
      @admin.valid?
      expect(@admin.errors.full_messages).to include('苗字は全角（漢字・ひらがな・カタカナ）を使用してください')
    end

    it 'お名前（全角）の名前（first_name）が空では登録されないこと' do
      @admin.first_name = nil
      @admin.valid?
      expect(@admin.errors.full_messages).to include("名前を入力してください")
    end

    it 'お名前（全角）の名前（first_name）が漢字またはひらがなまたはカタカナ以外では登録されないこと' do
      @admin.first_name = 'mr.brown'
      @admin.valid?
      expect(@admin.errors.full_messages).to include('名前は全角（漢字・ひらがな・カタカナ）を使用してください')
    end

    it 'お名前カナ（全角）の苗字（last_name_kana）が空では登録されないこと' do
      @admin.last_name_kana = nil
      @admin.valid?
      expect(@admin.errors.full_messages).to include("苗字（カナ）を入力してください")
    end

    it 'お名前カナ（全角）の苗字（last_name_kana）がカタカナ以外では登録されないこと' do
      @admin.last_name_kana = 'mr.brawn'
      @admin.valid?
      expect(@admin.errors.full_messages).to include('苗字（カナ）は全角（カタカナ）を使用してください')
    end

    it 'お名前カナ（全角）の名前（first_name_kana）が空では登録されないこと' do
      @admin.first_name_kana = nil
      @admin.valid?
      expect(@admin.errors.full_messages).to include("名前（カナ）を入力してください")
    end

    it 'お名前カナ（全角）の名前（first_name_kana）がカタカナ以外では登録されないこと' do
      @admin.first_name_kana = 'mr.brawn'
      @admin.valid?
      expect(@admin.errors.full_messages).to include('名前（カナ）は全角（カタカナ）を使用してください')
    end

    it '電話番号を入力する必要があること' do
      @admin.phone_number = nil
      @admin.valid?
      expect(@admin.errors.full_messages).to include("電話番号を入力してください")
    end

    it 'emailが空では登録されないこと' do
      @admin.email = nil
      @admin.valid?
      expect(@admin.errors.full_messages).to include("Emailを入力してください")
    end

    it '重複したemailが存在する場合は登録されないこと' do
      @admin.save
      another_admin = FactoryBot.build(:admin, email: @admin.email)
      another_admin.valid?
      expect(another_admin.errors.full_messages).to include('Emailはすでに存在します')
    end

    it 'emailに「@」が含まれていない場合は登録されないこと' do
      @admin.email = 'abc123.com'
      @admin.valid?
      expect(@admin.errors.full_messages).to include('Emailは不正な値です')
    end

    it 'passwordが空では登録されないこと' do
      @admin.password = nil
      @admin.valid?
      expect(@admin.errors.full_messages).to include("Passwordを入力してください")
    end

    it 'passwordが数字だけでは登録されないこと' do
      @admin.password = '123456'
      @admin.valid?
      expect(@admin.errors.full_messages).to include('Passwordは英字と数字の両方を含めて設定してください')
    end

    it 'passwordが英字だけでは登録されないこと' do
      @admin.password = 'abcdef'
      @admin.valid?
      expect(@admin.errors.full_messages).to include('Passwordは英字と数字の両方を含めて設定してください')
    end

    it 'passwordが6文字以下では登録されないこと' do
      @admin.password = '1qa1q'
      @admin.valid?
      expect(@admin.errors.full_messages).to include('Passwordは6文字以上で入力してください')
    end

    it 'passwordとpassword_confirmationが不一致では登録されないこと' do
      @admin.password = '1qa1qa'
      @admin.password_confirmation = '1qa1qa1'
      @admin.valid?
      expect(@admin.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
    end

  end
end

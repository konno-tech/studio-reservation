require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it '全て入力されていれば登録できること' do
      expect(@user).to be_valid
    end

    it 'お名前（全角）の苗字（last_name）が空では登録されないこと' do
      @user.last_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("苗字を入力してください")
    end

    it 'お名前（全角）の苗字（last_name）が漢字またはひらがなまたはカタカナ以外では登録されないこと' do
      @user.last_name = 'mr.brown'
      @user.valid?
      expect(@user.errors.full_messages).to include('苗字は全角（漢字・ひらがな・カタカナ）を使用してください')
    end

    it 'お名前（全角）の名前（first_name）が空では登録されないこと' do
      @user.first_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("名前を入力してください")
    end

    it 'お名前（全角）の名前（first_name）が漢字またはひらがなまたはカタカナ以外では登録されないこと' do
      @user.first_name = 'mr.brown'
      @user.valid?
      expect(@user.errors.full_messages).to include('名前は全角（漢字・ひらがな・カタカナ）を使用してください')
    end

    it 'お名前カナ（全角）の苗字（last_name_kana）が空では登録されないこと' do
      @user.last_name_kana = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("苗字（カナ）を入力してください")
    end

    it 'お名前カナ（全角）の苗字（last_name_kana）がカタカナ以外では登録されないこと' do
      @user.last_name_kana = 'mr.brawn'
      @user.valid?
      expect(@user.errors.full_messages).to include('苗字（カナ）は全角（カタカナ）を使用してください')
    end

    it 'お名前カナ（全角）の名前（first_name_kana）が空では登録されないこと' do
      @user.first_name_kana = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("名前（カナ）を入力してください")
    end

    it 'お名前カナ（全角）の名前（first_name_kana）がカタカナ以外では登録されないこと' do
      @user.first_name_kana = 'mr.brawn'
      @user.valid?
      expect(@user.errors.full_messages).to include('名前（カナ）は全角（カタカナ）を使用してください')
    end

    it '電話番号を入力する必要があること' do
      @user.phone_number = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("電話番号を入力してください")
    end

    it 'emailが空では登録されないこと' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Emailを入力してください")
    end

    it '重複したemailが存在する場合は登録されないこと' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Emailはすでに存在します')
    end

    it 'emailに「@」が含まれていない場合は登録されないこと' do
      @user.email = 'abc123.com'
      @user.valid?
      expect(@user.errors.full_messages).to include('Emailは不正な値です')
    end

    it 'passwordが空では登録されないこと' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Passwordを入力してください")
    end

    it 'passwordが数字だけでは登録されないこと' do
      @user.password = '123456'
      @user.valid?
      expect(@user.errors.full_messages).to include('Passwordは英字と数字の両方を含めて設定してください')
    end

    it 'passwordが英字だけでは登録されないこと' do
      @user.password = 'abcdef'
      @user.valid?
      expect(@user.errors.full_messages).to include('Passwordは英字と数字の両方を含めて設定してください')
    end

    it 'passwordが6文字以下では登録されないこと' do
      @user.password = '1qa1q'
      @user.valid?
      expect(@user.errors.full_messages).to include('Passwordは6文字以上で入力してください')
    end

    it 'passwordとpassword_confirmationが不一致では登録されないこと' do
      @user.password = '1qa1qa'
      @user.password_confirmation = '1qa1qa1'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
    end

  end
end

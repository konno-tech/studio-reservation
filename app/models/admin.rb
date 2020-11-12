class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: 'は全角（漢字・ひらがな・カタカナ）を使用してください' }
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: 'は全角（漢字・ひらがな・カタカナ）を使用してください' }

    validates :last_name_kana, format: { with: /\A[ァ-ン]+\z/, message: 'は全角（カタカナ）を使用してください' }
    validates :first_name_kana, format: { with: /\A[ァ-ン]+\z/, message: 'は全角（カタカナ）を使用してください' }

    validates :phone_number, format: { with: /\A\d{11}\z/, message: 'は「数字のみ且つ11桁以内で入力してください' }
    
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'は英字と数字の両方を含めて設定してください' }
    validates :password_confirmation, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'は英字と数字の両方を含めて設定してください' }
  end
end

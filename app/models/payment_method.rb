class PaymentMethod < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '現金払い（当日）' },
    { id: 2, name: 'クレジット決済（当日）' },
    { id: 3, name: 'クレジット決済（事前）' }
  ]
end
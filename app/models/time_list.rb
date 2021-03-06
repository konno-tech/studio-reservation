class TimeList < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '10:00'  }, # 10~11時
    { id: 2, name: '11:00'  }, # 11~12時
    { id: 3, name: '12:00'  }, # 12~13時
    { id: 4, name: '13:00'  }, # 13~14時
    { id: 5, name: '14:00'  }, # 14~15時
    { id: 6, name: '15:00'  }, # 15~16時
    { id: 7, name: '16:00'  }, # 16~17時
    { id: 8, name: '17:00'  }, # 17~18時
    { id: 9, name: '18:00'  }, # 18~19時
    { id: 10, name: '19:00' }, # 19~20時
    { id: 11, name: '20:00' }, # 20~21時
    { id: 12, name: '21:00' }, # 21~22時
    { id: 13, name: '22:00' },
    { id: 14, name: '22:00' }
  ]
end

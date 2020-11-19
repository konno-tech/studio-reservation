window.addEventListener('load', function(){

  let activity = document.getElementById("reserve-payment")

  activity.onchange = function(){

    // 支払い方法が「クレジット決済（事前）」だった場合はクレジット情報入力欄を活性化する
    if (document.getElementById("reserve-payment").value == "3") {
      document.getElementById("card-number").removeAttribute("disabled");
      document.getElementById("card-number").style.background = '#ffffff'
      document.getElementById("card-number").style.color = '#000000'

      document.getElementById("card-exp-month").removeAttribute("disabled");
      document.getElementById("card-exp-month").style.background = '#ffffff'
      document.getElementById("card-exp-month").style.color = '#000000'

      document.getElementById("card-exp-year").removeAttribute("disabled");
      document.getElementById("card-exp-year").style.background = '#ffffff'
      document.getElementById("card-exp-year").style.color = '#000000'

      document.getElementById("card-cvc").removeAttribute("disabled");
      document.getElementById("card-cvc").style.background = '#ffffff'
      document.getElementById("card-cvc").style.color = '#000000'

    } else {
      // 支払い方法が「クレジット決済（事前）」以外だった場合はクレジット情報入力欄を非活性化する
      document.getElementById("card-number").setAttribute("disabled", true);
      document.getElementById("card-number").style.background = '#808080'
      document.getElementById("card-number").style.color = '#ffffff'

      document.getElementById("card-exp-month").setAttribute("disabled", true);
      document.getElementById("card-exp-month").style.background = '#808080'
      document.getElementById("card-exp-month").style.color = '#ffffff'

      document.getElementById("card-exp-year").setAttribute("disabled", true);
      document.getElementById("card-exp-year").style.background = '#808080'
      document.getElementById("card-exp-year").style.color = '#ffffff'

      document.getElementById("card-cvc").setAttribute("disabled", true);
      document.getElementById("card-cvc").style.background = '#808080'
      document.getElementById("card-cvc").style.color = '#ffffff'
    };

  };
});
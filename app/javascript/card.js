const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY); // PAY.JPテスト公開鍵
  const form = document.getElementById("reserve-form");

  form.addEventListener("submit", (e) => {
    e.preventDefault();
    
    const formResult = document.getElementById("reserve-form");
    const formData = new FormData(formResult);

    const card = {
      number:    formData.get("studio_reserve[number]"),
      exp_month: formData.get("studio_reserve[exp_month]"),
      exp_year:  `20${formData.get("studio_reserve[exp_year]")}`,
      cvc:       formData.get("studio_reserve[cvc]"),
    };

    Payjp.createToken(card, (status, response) => {
      if (status == 200) {
        const token = response.id;
        const renderDom = document.getElementById("reserve-form");
        const tokenObj = `<input value=${token} name = 'token' type = "hidden">`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }

      document.getElementById("card-number").removeAttribute("name");
      document.getElementById("card-exp-month").removeAttribute("name");
      document.getElementById("card-exp-year").removeAttribute("name");
      document.getElementById("card-cvc").removeAttribute("name");

      document.getElementById("reserve-form").submit();
    });
  });
};

window.addEventListener("load", pay);
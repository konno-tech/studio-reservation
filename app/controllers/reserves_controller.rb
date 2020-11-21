class ReservesController < ApplicationController
  def new
    @studio = Studio.find(params[:studio_id])
    @studio_reserve = StudioReserve.new
    flash[:notice] = nil
    @reservations = Reservation.all.order(time_from_id: 'ASC')
  end

  def create
    @studio = Studio.find(params[:studio_id])
    @studio_reserve = StudioReserve.new(studio_reserve_params)
    if @studio_reserve.valid?
      if @studio_reserve.payment_method_id == "3"
        payment_method
      end

      if @studio_reserve.save
        redirect_to root_path
      else
        flash[:notice] = "この時間は予約済みです。別の時間を予約してください。"
        render :new
      end

    else
      render :new
    end
  end

  private

  def studio_reserve_params
    params.require(:studio_reserve).permit(:date, :time_from_id, :time_to_id, :note, :payment_method_id, :number_of_users_id)
                                      .merge(studio_id: params[:studio_id], user_id: current_user.id, token: params[:token])
  end

  def payment_method
    Payjp.api_key = ENV['PAYJP_SECRET_KEY'] # 秘密鍵
    Payjp::Charge.create(
      amount: @studio.price, # 商品の値段
      card: studio_reserve_params[:token], # カードトークン
      currency: 'jpy'                 # 日本円
    )
  end
end

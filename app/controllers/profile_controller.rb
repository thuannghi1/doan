class ProfileController < ApplicationController
  layout 'khachhang'

  before_action :set_profile, only: [:edit, :update]

  def index
    @nguoidungs = Nguoidung.all
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to edit_profile_path(@profile), notice: 'Profile was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_profile
    @profile = Nguoidung.find(session[:nguoidung_id]) if session[:nguoidung_id]
  end

  def profile_params
    params.require(:nguoidung).permit(:TenND, :Email, :DiaChi, :SDT, :MatKhau, :phai_id, :quyen_id)
  end
end

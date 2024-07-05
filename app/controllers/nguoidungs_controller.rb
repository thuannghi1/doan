class NguoidungsController < ApplicationController
  before_action :set_nguoidung, only: %i[ show edit update destroy ]

  # GET /nguoidungs or /nguoidungs.json
  def index
    @nguoidungs = Nguoidung.all
  end

  # GET /nguoidungs/1 or /nguoidungs/1.json
  def show
  end

  # GET /nguoidungs/new
  def new
    @nguoidung = Nguoidung.new
  end

  # GET /nguoidungs/1/edit
  def edit
  end

  # POST /nguoidungs or /nguoidungs.json
  def create
    @nguoidung = Nguoidung.new(nguoidung_params)

    respond_to do |format|
      if @nguoidung.save
        format.html { redirect_to nguoidung_url(@nguoidung), notice: "Nguoidung was successfully created." }
        format.json { render :show, status: :created, location: @nguoidung }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nguoidung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nguoidungs/1 or /nguoidungs/1.json
  def update
    respond_to do |format|
      if @nguoidung.update(nguoidung_params)
        format.html { redirect_to nguoidung_url(@nguoidung), notice: "Nguoidung was successfully updated." }
        format.json { render :show, status: :ok, location: @nguoidung }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nguoidung.errors, status: :unprocessable_entity }
      end
    end
  end

# DELETE /nguoidungs/1 or /nguoidungs/1.json
def destroy
  @nguoidung = Nguoidung.find(params[:id])
  begin
    @nguoidung.destroy
    notice_message = "Nguoidung was successfully destroyed."
  rescue ActiveRecord::InvalidForeignKey => e
    notice_message = "Failed to destroy Nguoidung: #{e.message}"
  end

  respond_to do |format|
    format.html { redirect_to nguoidungs_url, notice: notice_message }
    format.json { head :no_content }
  end
end
  # Use callbacks to share common setup or constraints between actions.
    def set_nguoidung
      @nguoidung = Nguoidung.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nguoidung_params
      params.require(:nguoidung).permit(:TenND, :Email, :DiaChi, :SDT, :MatKhau, :phai_id, :quyen_id)
    end
end

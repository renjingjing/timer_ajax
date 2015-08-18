class CounttimesController < ApplicationController
  before_action :set_counttime, only: [:show, :edit, :update, :destroy]

  # GET /counttimes
  # GET /counttimes.json
  def index
    @counttimes = Counttime.all.order(id: :desc)
    @counttime  = Counttime.new
  end

  def new
    @counttime  = Counttime.new
  end

  # POST /counttimes
  # POST /counttimes.json
  def create
    @counttime = Counttime.new(counttime_params)
    respond_to do |format|
      if @counttime.save
        format.html { redirect_to @counttime, notice: 'Counttime was successfully created.' }
        format.json { render :show, status: :created, location: @counttime }
        format.js
      else
        format.html { render :new }
        format.json { render json: @counttime.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counttime
      @counttime = Counttime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counttime_params
      params.require(:counttime).permit(:sec)
    end
end

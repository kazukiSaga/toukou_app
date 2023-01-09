class Tweet2sController < ApplicationController
  before_action :set_tweet2, only: %i[ show edit update destroy ]

  # GET /tweet2s or /tweet2s.json
  def index
    @tweet2s = Tweet2.page(params[:page]).per(1)
  end

  # GET /tweet2s/1 or /tweet2s/1.json
  def show
  end

  # GET /tweet2s/new
  def new
    @tweet2 = Tweet2.new
  end

  # GET /tweet2s/1/edit
  def edit
  end

  # POST /tweet2s or /tweet2s.json
  def create
    @tweet2 = Tweet2.new(tweet2_params)

    respond_to do |format|
      if @tweet2.save
        format.html { redirect_to tweet2_url(@tweet2), notice: "Tweet2 was successfully created." }
        format.json { render :show, status: :created, location: @tweet2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tweet2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweet2s/1 or /tweet2s/1.json
  def update
    respond_to do |format|
      if @tweet2.update(tweet2_params)
        format.html { redirect_to tweet2_url(@tweet2), notice: "Tweet2 was successfully updated." }
        format.json { render :show, status: :ok, location: @tweet2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tweet2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweet2s/1 or /tweet2s/1.json
  def destroy
    @tweet2.destroy

    respond_to do |format|
      format.html { redirect_to tweet2s_url, notice: "Tweet2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet2
      @tweet2 = Tweet2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet2_params
      params.require(:tweet2).permit(:content)
    end
end

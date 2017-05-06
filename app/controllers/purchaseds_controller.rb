class PurchasedsController < ApplicationController
  before_action :set_purchased, only: [:show, :edit, :update, :destroy]

  # GET /purchaseds
  # GET /purchaseds.json
  def index
    @purchaseds = Purchased.all
  end

  # GET /purchaseds/1
  # GET /purchaseds/1.json
  def show
  end

  # GET /purchaseds/new
  def new
    @purchased = Purchased.new
  end

  # GET /purchaseds/1/edit
  def edit
  end

  # POST /purchaseds
  # POST /purchaseds.json
  def create
    @purchased = Purchased.new(purchased_params)

    respond_to do |format|
      if @purchased.save
        format.html { redirect_to @purchased, notice: 'Purchased was successfully created.' }
        format.json { render :show, status: :created, location: @purchased }
      else
        format.html { render :new }
        format.json { render json: @purchased.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchaseds/1
  # PATCH/PUT /purchaseds/1.json
  def update
    respond_to do |format|
      if @purchased.update(purchased_params)
        format.html { redirect_to @purchased, notice: 'Purchased was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchased }
      else
        format.html { render :edit }
        format.json { render json: @purchased.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchaseds/1
  # DELETE /purchaseds/1.json
  def destroy
    @purchased.destroy
    respond_to do |format|
      format.html { redirect_to purchaseds_url, notice: 'Purchased was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchased
      @purchased = Purchased.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchased_params
      params.require(:purchased).permit(:date_purchased)
    end
end

class PersonalBanksController < ApplicationController
  before_action :set_personal_bank, only: [:show, :edit, :update, :destroy]

  # GET /personal_banks
  # GET /personal_banks.json
  def index
    @personal_banks = PersonalBank.all
  end

  # GET /personal_banks/1
  # GET /personal_banks/1.json
  def show
  end

  # GET /personal_banks/new
  def new
    @personal_bank = PersonalBank.new
  end

  # GET /personal_banks/1/edit
  def edit
  end

  # POST /personal_banks
  # POST /personal_banks.json
  def create
    @personal_bank = PersonalBank.new(personal_bank_params)

    respond_to do |format|
      if @personal_bank.save
        format.html { redirect_to @personal_bank, notice: 'Personal bank was successfully created.' }
        format.json { render :show, status: :created, location: @personal_bank }
      else
        format.html { render :new }
        format.json { render json: @personal_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_banks/1
  # PATCH/PUT /personal_banks/1.json
  def update
    respond_to do |format|
      if @personal_bank.update(personal_bank_params)
        format.html { redirect_to @personal_bank, notice: 'Personal bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_bank }
      else
        format.html { render :edit }
        format.json { render json: @personal_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_banks/1
  # DELETE /personal_banks/1.json
  def destroy
    @personal_bank.destroy
    respond_to do |format|
      format.html { redirect_to personal_banks_url, notice: 'Personal bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_bank
      @personal_bank = PersonalBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_bank_params
      params.require(:personal_bank).permit(:amount, :exhanges, :description)
    end
end

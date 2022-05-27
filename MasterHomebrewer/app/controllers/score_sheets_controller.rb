class ScoreSheetsController < ApplicationController
  before_action :set_score_sheet, only: %i[ show edit update destroy ]

  # GET /score_sheets or /score_sheets.json
  def index
    @score_sheets = ScoreSheet.all
  end

  # GET /score_sheets/1 or /score_sheets/1.json
  def show
  end

  # GET /score_sheets/new
  def new
    @score_sheet = ScoreSheet.new
  end

  # GET /score_sheets/1/edit
  def edit
  end

  # POST /score_sheets or /score_sheets.json
  def create
    @score_sheet = ScoreSheet.new(score_sheet_params)

    respond_to do |format|
      if @score_sheet.save
        format.html { redirect_to score_sheet_url(@score_sheet), notice: "Score sheet was successfully created." }
        format.json { render :show, status: :created, location: @score_sheet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @score_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_sheets/1 or /score_sheets/1.json
  def update
    respond_to do |format|
      if @score_sheet.update(score_sheet_params)
        format.html { redirect_to score_sheet_url(@score_sheet), notice: "Score sheet was successfully updated." }
        format.json { render :show, status: :ok, location: @score_sheet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @score_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_sheets/1 or /score_sheets/1.json
  def destroy
    @score_sheet.destroy

    respond_to do |format|
      format.html { redirect_to score_sheets_url, notice: "Score sheet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_sheet
      @score_sheet = ScoreSheet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def score_sheet_params
      params.require(:score_sheet).permit(:category, :score, :brewer_id)
    end
end

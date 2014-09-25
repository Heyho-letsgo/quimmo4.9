class TravailleursController < ApplicationController
  before_action :set_travailleur, only: [:show, :edit, :update, :destroy]

  # GET /travailleurs
  # GET /travailleurs.json
  def index
    @travailleurs = Travailleur.all
  end

  # GET /travailleurs/1
  # GET /travailleurs/1.json
  def show
  end

  # GET /travailleurs/new
  def new
    @travailleur = Travailleur.new
  end

  # GET /travailleurs/1/edit
  def edit
  end

  # POST /travailleurs
  # POST /travailleurs.json
  def create
    @travailleur = Travailleur.new(travailleur_params)

    respond_to do |format|
      if @travailleur.save
        format.html { redirect_to @travailleur, notice: 'Travailleur was successfully created.' }
        format.json { render :show, status: :created, location: @travailleur }
      else
        format.html { render :new }
        format.json { render json: @travailleur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travailleurs/1
  # PATCH/PUT /travailleurs/1.json
  def update
    respond_to do |format|
      if @travailleur.update(travailleur_params)
        format.html { redirect_to @travailleur, notice: 'Travailleur was successfully updated.' }
        format.json { render :show, status: :ok, location: @travailleur }
      else
        format.html { render :edit }
        format.json { render json: @travailleur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travailleurs/1
  # DELETE /travailleurs/1.json
  def destroy
    @travailleur.destroy
    respond_to do |format|
      format.html { redirect_to travailleurs_url, notice: 'Travailleur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travailleur
      @travailleur = Travailleur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travailleur_params
      params.require(:travailleur).permit(:nom, :principal_groupe_id, :sous_groupe_id, :agence_id, :user_id)
    end
end

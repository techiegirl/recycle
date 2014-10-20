class StateRecycleLawsController < ApplicationController
  before_action :set_state_recycle_law, only: [:show, :edit, :update, :destroy]

  # GET /state_recycle_laws
  # GET /state_recycle_laws.json
  def index
    @state_recycle_laws = StateRecycleLaw.all
  end

  # GET /state_recycle_laws/1
  # GET /state_recycle_laws/1.json
  def show
  end

  # GET /state_recycle_laws/new
  def new
    @state_recycle_law = StateRecycleLaw.new
  end

  # GET /state_recycle_laws/1/edit
  def edit
  end

  # POST /state_recycle_laws
  # POST /state_recycle_laws.json
  def create
    @state_recycle_law = StateRecycleLaw.new(state_recycle_law_params)

    respond_to do |format|
      if @state_recycle_law.save
        format.html { redirect_to @state_recycle_law, notice: 'State recycle law was successfully created.' }
        format.json { render :show, status: :created, location: @state_recycle_law }
      else
        format.html { render :new }
        format.json { render json: @state_recycle_law.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_recycle_laws/1
  # PATCH/PUT /state_recycle_laws/1.json
  def update
    respond_to do |format|
      if @state_recycle_law.update(state_recycle_law_params)
        format.html { redirect_to @state_recycle_law, notice: 'State recycle law was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_recycle_law }
      else
        format.html { render :edit }
        format.json { render json: @state_recycle_law.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_recycle_laws/1
  # DELETE /state_recycle_laws/1.json
  def destroy
    @state_recycle_law.destroy
    respond_to do |format|
      format.html { redirect_to state_recycle_laws_url, notice: 'State recycle law was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_recycle_law
      @state_recycle_law = StateRecycleLaw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_recycle_law_params
      params.require(:state_recycle_law).permit(:item_id, :state_name, :state_abr, :description)
    end
end

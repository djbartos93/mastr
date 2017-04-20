class EngineerClassesController < ApplicationController
  before_action :set_engineer_class, only: [:show, :edit, :update, :destroy]

  # GET /engineer_classes
  # GET /engineer_classes.json
  def index
    @engineer_classes = EngineerClass.all
  end

  # GET /engineer_classes/1
  # GET /engineer_classes/1.json
  def show
  end

  # GET /engineer_classes/new
  def new
    @engineer_class = EngineerClass.new
  end

  # GET /engineer_classes/1/edit
  def edit
  end

  # POST /engineer_classes
  # POST /engineer_classes.json
  def create
    @engineer_class = EngineerClass.new(engineer_class_params)

    respond_to do |format|
      if @engineer_class.save
        format.html { redirect_to @engineer_class, notice: 'Engineer class was successfully created.' }
        format.json { render :show, status: :created, location: @engineer_class }
      else
        format.html { render :new }
        format.json { render json: @engineer_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /engineer_classes/1
  # PATCH/PUT /engineer_classes/1.json
  def update
    respond_to do |format|
      if @engineer_class.update(engineer_class_params)
        format.html { redirect_to @engineer_class, notice: 'Engineer class was successfully updated.' }
        format.json { render :show, status: :ok, location: @engineer_class }
      else
        format.html { render :edit }
        format.json { render json: @engineer_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engineer_classes/1
  # DELETE /engineer_classes/1.json
  def destroy
    @engineer_class.destroy
    respond_to do |format|
      format.html { redirect_to engineer_classes_url, notice: 'Engineer class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engineer_class
      @engineer_class = EngineerClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engineer_class_params
      params.require(:engineer_class).permit(:eC_id, :e_className, :class_desc, :enabled)
    end
end

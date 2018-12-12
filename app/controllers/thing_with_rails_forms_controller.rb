class ThingWithRailsFormsController < ApplicationController
  before_action :set_thing_with_rails_form, only: [:show, :edit, :update, :destroy]

  # GET /thing_with_rails_forms
  # GET /thing_with_rails_forms.json
  def index
    @thing_with_rails_forms = ThingWithRailsForm.all
  end

  # GET /thing_with_rails_forms/1
  # GET /thing_with_rails_forms/1.json
  def show
  end

  # GET /thing_with_rails_forms/new
  def new
    @thing_with_rails_form = ThingWithRailsForm.new
  end

  # GET /thing_with_rails_forms/1/edit
  def edit
  end

  # POST /thing_with_rails_forms
  # POST /thing_with_rails_forms.json
  def create
    @thing_with_rails_form = ThingWithRailsForm.new(thing_with_rails_form_params)

    respond_to do |format|
      if @thing_with_rails_form.save
        format.html { redirect_to @thing_with_rails_form, notice: 'Thing with rails form was successfully created.' }
        format.json { render :show, status: :created, location: @thing_with_rails_form }
      else
        format.html { render :new }
        format.json { render json: @thing_with_rails_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thing_with_rails_forms/1
  # PATCH/PUT /thing_with_rails_forms/1.json
  def update
    respond_to do |format|
      if @thing_with_rails_form.update(thing_with_rails_form_params)
        format.html { redirect_to @thing_with_rails_form, notice: 'Thing with rails form was successfully updated.' }
        format.json { render :show, status: :ok, location: @thing_with_rails_form }
      else
        format.html { render :edit }
        format.json { render json: @thing_with_rails_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thing_with_rails_forms/1
  # DELETE /thing_with_rails_forms/1.json
  def destroy
    @thing_with_rails_form.destroy
    respond_to do |format|
      format.html { redirect_to thing_with_rails_forms_url, notice: 'Thing with rails form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing_with_rails_form
      @thing_with_rails_form = ThingWithRailsForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thing_with_rails_form_params
      params.require(:thing_with_rails_form).permit(:name, :image)
    end
end

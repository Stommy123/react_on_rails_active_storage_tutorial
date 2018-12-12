class ThingWithReactFormsController < ApplicationController
  before_action :set_thing_with_react_form, only: [:show, :edit, :update, :destroy]

  # GET /thing_with_react_forms
  # GET /thing_with_react_forms.json
  def index
    @thing_with_react_forms = ThingWithReactForm.all
  end

  # GET /thing_with_react_forms/1
  # GET /thing_with_react_forms/1.json
  def show
  end

  # GET /thing_with_react_forms/new
  def new
    @thing_with_react_form = ThingWithReactForm.new
  end

  # GET /thing_with_react_forms/1/edit
  def edit
  end

  # POST /thing_with_react_forms
  # POST /thing_with_react_forms.json
  def create
    @thing_with_react_form = ThingWithReactForm.new(thing_with_react_form_params)

    respond_to do |format|
      if @thing_with_react_form.save
        format.html { redirect_to @thing_with_react_form, notice: 'Thing with react form was successfully created.' }
        format.json { render :show, status: :created, location: @thing_with_react_form }
      else
        format.html { render :new }
        format.json { render json: @thing_with_react_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thing_with_react_forms/1
  # PATCH/PUT /thing_with_react_forms/1.json
  def update
    respond_to do |format|
      if @thing_with_react_form.update(thing_with_react_form_params)
        format.html { redirect_to @thing_with_react_form, notice: 'Thing with react form was successfully updated.' }
        format.json { render :show, status: :ok, location: @thing_with_react_form }
      else
        format.html { render :edit }
        format.json { render json: @thing_with_react_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thing_with_react_forms/1
  # DELETE /thing_with_react_forms/1.json
  def destroy
    @thing_with_react_form.destroy
    respond_to do |format|
      format.html { redirect_to thing_with_react_forms_url, notice: 'Thing with react form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing_with_react_form
      @thing_with_react_form = ThingWithReactForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thing_with_react_form_params
      params.require(:thing_with_react_form).permit(:name, :image)
    end
end

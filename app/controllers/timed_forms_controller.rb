class TimedFormsController < ApplicationController
  before_action :set_timed_form, only: [:show, :edit, :update, :destroy]

  # GET /timed_forms
  # GET /timed_forms.json
  def index
    @timed_forms = TimedForm.all
  end

  # GET /timed_forms/1
  # GET /timed_forms/1.json
  def show
  end

  # GET /timed_forms/new
  def new
    @timed_form = TimedForm.new
  end

  # GET /timed_forms/1/edit
  def edit
  end

  # POST /timed_forms
  # POST /timed_forms.json
  def create
    @timed_form = TimedForm.new(timed_form_params)

    respond_to do |format|
      if @timed_form.save
        format.html { redirect_to @timed_form, notice: 'Timed form was successfully created.' }
        format.json { render :show, status: :created, location: @timed_form }
      else
        format.html { render :new }
        format.json { render json: @timed_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timed_forms/1
  # PATCH/PUT /timed_forms/1.json
  def update
    respond_to do |format|
      if @timed_form.update(timed_form_params)
        format.html { redirect_to @timed_form, notice: 'Timed form was successfully updated.' }
        format.json { render :show, status: :ok, location: @timed_form }
      else
        format.html { render :edit }
        format.json { render json: @timed_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timed_forms/1
  # DELETE /timed_forms/1.json
  def destroy
    @timed_form.destroy
    respond_to do |format|
      format.html { redirect_to timed_forms_url, notice: 'Timed form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timed_form
      @timed_form = TimedForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timed_form_params
      params.require(:timed_form).permit(:begin)
    end
end

class CohortInstructorsController < ApplicationController
  before_action :require_login
  before_action :set_cohort_instructor, only: [:show, :edit, :update, :destroy]

  # GET /cohort_instructors/new
  def new
    @cohort_instructor = CohortInstructor.new
  end

  # GET /cohort_instructors/1/edit
  def edit
  end

  # POST /cohort_instructors
  # POST /cohort_instructors.json
  def create
    @cohort_instructor = CohortInstructor.new(cohort_instructor_params)

    respond_to do |format|
      if @cohort_instructor.save
        format.html { redirect_to cohorts_path, notice: "Instructor added to cohort!" }
        format.json { render :show, status: :created, location: @cohort_instructor }
      else
        format.html { redirect_to instructors_path, error: "Instructor was not added: #{@cohort.instructor.errors.full_messages}"}
        format.json { render json: @cohort_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cohort_instructors/1
  # PATCH/PUT /cohort_instructors/1.json
  def update
    respond_to do |format|
      if @cohort_instructor.update(cohort_instructor_params)
        format.html { redirect_to instructors_path }
        format.json { render :show, status: :ok, location: @cohort_instructor }
      else
        format.html { render :edit }
        format.json { render json: @cohort_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohort_instructors/1
  # DELETE /cohort_instructors/1.json
  def destroy
    @cohort_instructor.destroy
    respond_to do |format|
      format.html { redirect_to cohort_instructors_url, notice: 'Instructor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohort_instructor
      @cohort_instructor = CohortInstructor.find(params[:id])
    end

    def set_cohort
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cohort_instructor_params
      params.require(:cohort_instructor).permit(:instructor_id, :cohort_id)
    end
end

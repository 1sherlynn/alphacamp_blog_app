class StudentsController < ApplicationController

 before_action :find_student, only: [:show, :edit, :update, :destroy]
 
  def new
	 @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
        flash[:notice] = 'Student record was successfully created.'
        redirect_to student_path(id: @student.id)
    else
         flash.now[:notice] = "Student record is not created."
        render 'new'
    end
  end


  def show
  end

  def index
      @students = Student.all
  end

  def edit
  end

  def update
    if @student.update(student_params)
      flash.now[:notice] = "Student record has been successfully updated."
      redirect_to student_path(id: @student.id)
    else
      flash[:notice] = "Student record is not successfully updated."
      render 'edit'
    end
  end

  def destroy
    @student.destroy
    flash[:notice] = "Student record has been successfully destroyed."
    redirect_to students_path
  end
   
   private
    def student_params
      params.require(:student).permit(:name, :birthdate, :email)
    end

    def find_student
    	@student = Student.find(params[:id])
    end
end

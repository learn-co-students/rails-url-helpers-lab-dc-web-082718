class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    # set_student
  end

  def activate
    student = set_student

    # if student.active == false then student.active = true else student.active = false end
    student.active = student.active ? false : true

    student.save

    redirect_to student_path(student)
  end

  # def activation
  #   @student = set_student
  #   @student.active = params[:activation]
  #
  #   redirect_to student_path(@student)
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end

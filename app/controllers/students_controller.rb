class StudentsController < ApplicationController
  def index
    @students = Student.order(:name) # Load all students ordered by name.
  end
  # Automatically load the app/views/students/index.html.erb

  def show
    @student = find_student
  end
  # Automatically load the app/views/students/show.html.erb

  def new
    @student = Student.new
  end
  # Automatically load the app/views/students/new.html.erb

  def create
    @student = Student.new(student_params)

    if @student.save # If the validations pass
      redirect_to @student # Redirect to show action for this student.
    else # if the validations fail
      render :new # Render the view associated with the new action.
    end
  end
  # This action does not have an associated view!

  def edit
    @student = find_student
  end
  # Automatically loads the associated view app/views/students/edit.html.erb

  def update
    @student = find_student

    if @student.update(student_params) # If validations pass
      redirect_to @student # Redirect to the show action for this student.
    else # if the validations fail
      render :edit # Render the edit view to show the form again and display validation errors.
    end
  end
  # No view associated with this action we either redirect or render.

  private

  def find_student
    Student.find(params[:id]) # Load student mentioned by id in the route.
  end

  def student_params
    params.require(:student).permit(:name)
  end
end

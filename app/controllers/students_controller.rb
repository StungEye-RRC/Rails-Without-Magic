class StudentsController < ApplicationController
  def index
    @students = Student.order(:name) # Load all students ordered by name.
  end
  # Automatically load the app/views/students/index.html.erb

  def show
    @student = Student.find(params[:id]) # Load student mentioned by id in the route.
  end
  # Automatically load the app/views/students/show.html.erb
end

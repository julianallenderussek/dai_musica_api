class Api::V1::StudentsController < ApplicationController
    def index
        @students = Student.all
        render(json: @students, status: :ok)
        #render(json: { message: "Si jala la ruta" }, status: :ok)
    end

    def create 
        #@user = User.create(first_name: params[:first_name] ,last_name: paramas[:last_name], email: params[:email], password: params[:password])
        @student = Student.create(student_params)

        if @student
            render(json: @student, status: :created)

        else 
            render(json: { message: "There was an error creating student " } , status: :bad_request)
        end
    end

    def show
        #debugger 
        @student = Student.find(params[:id])
        render(json: @student, status: :ok)
    end

    def destroy
        @student = Student.find(params[:id])
        if @student.destroy!
            render(json: { message: "The student was deleted"}, status: :ok)
          else
            render(json: { errors: @student.errors.full_messages }, status: :bad_request)
          end
    end

    def update
        @student = Student.find(params[:id])
        @student.update!(student_params)
        render(json: @student, status: :updated)
    end

    def active_students_number
        active_students = Student.where(status: "active").count
        render(json: {active_students: active_students}, status: :ok)
    end

    private 
    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :phone_number, :country, :city, :instrument, :status)
      end
end
class Api::V1::StudentsController < ApplicationController
    def index
        @students = Student.all
        render(json: @students, status: :ok)
        #render(json: { message: "Si jala la ruta" }, status: :ok)
    end

    def create 
        debugger
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

    private 
    def student_params
        params[:student][:school_id] = params[:school_id]
        params.require(:student).permit(
            :first_name, :last_name, :email, :phone_number, :country, :city, :instrument, :status,
            :profesor_id, :vendor_id, :school_id 
        )
    end
end
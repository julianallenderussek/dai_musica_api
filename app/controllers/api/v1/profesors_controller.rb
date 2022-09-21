class Api::V1::ProfesorsController < ApplicationController
    def index
        @profesors = School.find(params[:school_id]).profesors
        if @profesors 
            render(json: @profesors, status: :ok)
        else
            render(json: {message: "No school was found"}, status: :not_found)
        end
        #render(json: { message: "Si jala la ruta" }, status: :ok)
    end

    def create 
        profesor = Profesor.create(profesor_params)

        if profesor
            render(json: @profesor, status: :created)

        else 
            render(json: { message: "There was an error creating profesor " } , status: :bad_request)
        end
    end

    def show
        profesor = Profesor.find(params[:id])
        render(json: profesor, status: :ok)
    end

    def destroy
        profesor = Profesor.find(params[:id])
        if profesor.destroy!
            render(json: { message: "The profesor was deleted"}, status: :ok)
          else
            render(json: { errors: profesor.errors.full_messages }, status: :bad_request)
          end
    end

    def update
        profesor = Profesor.find(params[:id])
        profesor.update!(profesor_params)
        render(json: profesor, status: :updated)
    end

    private 
    def profesor_params
        params.require(:profesor).permit(:first_name, :last_name, :email, :phone_number, :country, :city, :instrument, :marketing, :modality, :status)
    end
end
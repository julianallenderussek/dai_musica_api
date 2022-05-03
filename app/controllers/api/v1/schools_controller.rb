class Api::V1::SchoolsController < ApplicationController
    def index
        @schools = School.all
        render(json: @schools, status: :ok)
        #render(json: { message: "Si jala la ruta" }, status: :ok)
    end

    def create 
         @school = School.create(name: params[:name])
    #     @payment = Payment.create(payment_params)

        if @school
            render(json: @school, status: :created)

        else 
             render(json: { message: "There was an error creating school  " } , status: :bad_request)
         end
    end

    def show  
        @school = School.find(params[:id])
        render(json: @school, status: :ok)
    end

    #TODO: se copiaron las funciones de payment, falta cambiar las variables de "payment" a "school"
    # def destroy
    #     @payment = Payment.find(params[:id])
    #     if @payment.destroy!
    #         render(json: { message: "The profesor was deleted"}, status: :ok)
    #       else
    #         render(json: { errors: @payment.errors.full_messages }, status: :bad_request)
    #       end
    # end

    # def update
    #     @payment = Payment.find(params[:id])
    #     debugger
    #     if @payment 
    #         @payment.update!(payment_params)
    #         render(json: @payment, status: :ok)
    #     else
    #         render(json:{ errors: @payment.error.full_messages, status: :not_found})
    #     end

    # end
    #prueba para el Endpoint de Trendit borrar cuando termine de jugar
    def friends 
        #ya sabemos que params[:phone_numbers] nos regresa como tal el arreglo con los strings (numeros)
        phone_numbers = params[:phone_numbers]
        contacts = []
        puts "encontrando tus contactos... "
        for x in phone_numbers
            student = Student.find_by(phone_number: x)
            if student
               contacts << student 
            end
        end

        puts " size del array"
        puts contacts.size
        render(json: contacts, status: :ok)
    end

    private 
    def school_params
        params.require(:school).permit(:name)#agregar los parametros correctos
    end
end
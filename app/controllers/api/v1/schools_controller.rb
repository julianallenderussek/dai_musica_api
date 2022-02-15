class Api::V1::SchoolsController < ApplicationController
    def index
        @schools = School.all
        render(json: @schools, status: :ok)
        #render(json: { message: "Si jala la ruta" }, status: :ok)
    end

    # def create 
    #     #@user = User.create(first_name: params[:first_name] ,last_name: paramas[:last_name], email: params[:email], password: params[:password])
    #     @payment = Payment.create(payment_params)

    #     if @payment
    #         render(json: @payment, status: :created)

    #     else 
    #         render(json: { message: "There was an error creating profesor " } , status: :bad_request)
    #     end
    # end

    #def show
    #     #debugger 
    #     @school = school.find(params[:id])
    #     render(json: @school, status: :ok)
    # end

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

    # private 
    # def payment_params
    #     params.require(:payment).permit(:status, :date, :method, :received_by, :account, :type_of_payment, :amount, :type_of_expense, :image_receipt)#agregar los parametros correctos
    #   end
end
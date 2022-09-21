class Api::V1::SchoolsController < ApplicationController
    def index
        schools = School.all
        render(json: schools, status: :ok)
    end

    def create 
        #@user = User.create(first_name: params[:first_name] ,last_name: paramas[:last_name], email: params[:email], password: params[:password])
        school = School.create(school_params)
        if school
            render(json: school, status: :created)
        else 
            render(json: { message: "There was an error creating profesor " } , status: :bad_request)
        end
    end

    #def show
    #     #debugger 
    #     @school = school.find(params[:id])
    #     render(json: @school, status: :ok)
    # end

    def destroy
        school = School.find(params[:id])
        if school.destroy!
            render(json: { message: "School was deleted"}, status: :ok)
          else
            render(json: { errors: school.errors.full_messages }, status: :bad_request)
          end
    end

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

    private 
    def school_params
        params.require(:school).permit(:name)#agregar los parametros correctos
    end
end
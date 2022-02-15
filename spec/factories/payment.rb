FactoryBot.define do
    factory :payment do
        school { School.find_by(name: "Dai Academia")}
        status {["pending", "not paid", "complete"].sample}
        #image_receipt { }
        date { "10-10-2022"}
        received_by { "persona apellido"}
        account { " " } #recordar para que era este atributo
        type_of_payment {["expense", "revenue"].sample}
        amount { 500 }
        type_of_expense {["services", "profesors", "vendors"].sample}
        payment_type {["cash", "transaction"].sample}
    end
  end
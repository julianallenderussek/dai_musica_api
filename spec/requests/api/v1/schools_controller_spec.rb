# frozen_string_literal: true

require "rails_helper"

RSpec.describe(Api::V1::SchoolsController, type: :request) do
#   let(:superadmin) { create(:authenticated_user) }
#   let(:headers) { headers_for(client: :dashboard, session_token: superadmin.session_tokens.first) }
#   let(:reimbursement) { create(:reimbursement) }
    let(:headers) { headers_for(client: :dashboard) }
    let(:school) { create(:school) }

  describe "GET #index schools" do
    before do

      get "/schools", headers: headers
    end

    it "returns http success" do 
        
      expect(response).to(have_http_status(:success))
    end
  end
#   describe "PUT #update" do
#     context "with valid data" do
#       let(:params) do
#         {
#           reimbursement: {
#             note: Faker::Quote.yoda,
#             status: :approved,
#           },
#         }
#       end
#       before do
#         put "/reimbursements/#{reimbursement.id}",
#           params: params,
#           headers: headers
#         reimbursement.reload
#       end
#       it "returns http success" do
#         expect(response).to(have_http_status(:success))
#       end
#       it "modifies reimbursement" do
#         expect(reimbursement.approved?).to(be_truthy)
#       end
#       it "adds the correct approver" do
#         expect(reimbursement.approver).not_to(be_nil)
#         expect(reimbursement.approver).to(eql(superadmin))
#       end
#       it "creates an approval event" do
#         expect(TimeLine.by_event_type("approval")).not_to(be_empty)
#       end
#     end
#     context "with invalid data" do
#       let(:params_negative_amount) do
#         {
#           reimbursement: {
#             amount: -300,
#           },
#         }
#       end
#       context "negative amount" do
#         before do
#           put "/reimbursements/#{reimbursement.id}",
#             params: params_negative_amount,
#             headers: headers
#           reimbursement.reload
#         end
#         it "returns http bad_request" do
#           expect(response).to(have_http_status(:bad_request))
#         end
#       end
#     end
#   end
#   describe "DELETE #destroy" do
#     before do
#       delete "/reimbursements/#{reimbursement.id}", headers: headers
#     end
#     it "returns http success" do
#       expect(response).to(have_http_status(:success))
#     end
#     it "deletes reimbursement" do
#       expect(Reimbursement.where(id: reimbursement.id)).to(be_empty)
#     end
#  end
 end
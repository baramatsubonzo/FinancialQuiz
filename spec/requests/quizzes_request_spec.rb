require 'rails_helper'

RSpec.describe "Quizzes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/quizzes/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/quizzes/show"
      expect(response).to have_http_status(:success)
    end
  end

end

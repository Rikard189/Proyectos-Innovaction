require 'rails_helper'

RSpec.describe "Atributos", type: :request do
  describe "GET /atributos" do
    it "works! (now write some real specs)" do
      get atributos_path
      expect(response).to have_http_status(200)
    end
  end
end

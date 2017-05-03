require 'rails_helper'

RSpec.describe "Estudiantes", type: :request do
  describe "GET /estudiantes" do
    it "works! (now write some real specs)" do
      get estudiantes_path
      expect(response).to have_http_status(200)
    end
  end
end

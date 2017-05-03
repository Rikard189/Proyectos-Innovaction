require 'rails_helper'

RSpec.describe "estudiantes/new", type: :view do
  before(:each) do
    assign(:estudiante, Estudiante.new())
  end

  it "renders new estudiante form" do
    render

    assert_select "form[action=?][method=?]", estudiantes_path, "post" do
    end
  end
end

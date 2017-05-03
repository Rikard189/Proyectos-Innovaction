require 'rails_helper'

RSpec.describe "estudiantes/edit", type: :view do
  before(:each) do
    @estudiante = assign(:estudiante, Estudiante.create!())
  end

  it "renders the edit estudiante form" do
    render

    assert_select "form[action=?][method=?]", estudiante_path(@estudiante), "post" do
    end
  end
end

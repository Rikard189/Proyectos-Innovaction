require 'rails_helper'

RSpec.describe "estudiantes/show", type: :view do
  before(:each) do
    @estudiante = assign(:estudiante, Estudiante.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

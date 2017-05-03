require 'rails_helper'

RSpec.describe "estudiantes/index", type: :view do
  before(:each) do
    assign(:estudiantes, [
      Estudiante.create!(),
      Estudiante.create!()
    ])
  end

  it "renders a list of estudiantes" do
    render
  end
end

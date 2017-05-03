require 'rails_helper'

RSpec.describe "atributos/show", type: :view do
  before(:each) do
    @atributo = assign(:atributo, Atributo.create!(
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end

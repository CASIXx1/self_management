require 'rails_helper'

RSpec.describe "dairies/index", type: :view do
  before(:each) do
    assign(:dairies, [
      Dairy.create!(),
      Dairy.create!()
    ])
  end

  it "renders a list of dairies" do
    render
  end
end

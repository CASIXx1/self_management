require 'rails_helper'

RSpec.describe "dairies/new", type: :view do
  before(:each) do
    assign(:dairy, Dairy.new())
  end

  it "renders new dairy form" do
    render

    assert_select "form[action=?][method=?]", dairies_path, "post" do
    end
  end
end

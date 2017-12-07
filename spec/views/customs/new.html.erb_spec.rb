require "rails_helper"

RSpec.describe "customs/new", type: :view do
  before(:each) do
    assign(:custom, Custom.new())
  end

  it "renders new custom form" do
    render

    assert_select "form[action=?][method=?]", customs_path, "post" do
    end
  end
end

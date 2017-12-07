require "rails_helper"

RSpec.describe "customs/edit", type: :view do
  before(:each) do
    @custom = assign(:custom, Custom.create!())
  end

  it "renders the edit custom form" do
    render

    assert_select "form[action=?][method=?]", custom_path(@custom), "post" do
    end
  end
end

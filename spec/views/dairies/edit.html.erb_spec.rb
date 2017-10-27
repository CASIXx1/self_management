require "rails_helper"

RSpec.describe "dairies/edit", type: :view do
  before(:each) do
    @dairy = assign(:dairy, Dairy.create!())
  end

  # it "renders the edit dairy form" do
  #   render
  #
  #   assert_select "form[action=?][method=?]", dairy_path(@dairy), "post" do
  #   end
  # end
end

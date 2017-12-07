require "rails_helper"

RSpec.describe "customs/show", type: :view do
  before(:each) do
    @custom = assign(:custom, Custom.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

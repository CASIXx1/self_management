require 'rails_helper'

RSpec.describe 'dairies/show', type: :view do
  before(:each) do
    @dairy = assign(:dairy, Dairy.create!())
  end

  # it "renders attributes in <p>" do
  #   render
  # end
end
